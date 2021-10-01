package com.qgp.api.userservice.service;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.AnonymousAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.cognitoidp.AWSCognitoIdentityProvider;
import com.amazonaws.services.cognitoidp.AWSCognitoIdentityProviderClientBuilder;
import com.amazonaws.services.cognitoidp.model.*;
import com.qgp.api.userservice.model.request.UserRequest;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {

    final String CLIENTAPP_ID = "n2qku3bdhfihbl29h8a31crpm";
    final String POOL_ID = "us-east-2_vcTfaNNmu";
    final AWSCognitoIdentityProvider cognitoIdentityProvider;

    UserService(){
        AnonymousAWSCredentials awsCredentials = new AnonymousAWSCredentials();
        cognitoIdentityProvider = AWSCognitoIdentityProviderClientBuilder
                .standard()
                .withCredentials(new AWSStaticCredentialsProvider(awsCredentials))
                .withRegion(Regions.US_EAST_2)
                .build();
    }

    public boolean createUser(UserRequest userRequest){

        SignUpRequest request = new SignUpRequest();
        request.setClientId(CLIENTAPP_ID);
        request.setUsername(userRequest.userPhone);
        request.setPassword(userRequest.userPassword);

        List<AttributeType> list = new ArrayList();
        list.add(new AttributeType().withName("name").withValue(userRequest.userName));

        request.setUserAttributes(list);

        try {
            SignUpResult result = cognitoIdentityProvider.signUp(request);
            System.out.println(result);
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    public boolean isTheNumberRegistered(String phoneNumber) {
        AdminGetUserRequest getUserRequest = new AdminGetUserRequest();
        getUserRequest.setUsername(phoneNumber);
        getUserRequest.setUserPoolId(POOL_ID);
        cognitoIdentityProvider.get




        try {
            AdminGetUserResult result = cognitoIdentityProvider.adminGetUser(getUserRequest);
            System.out.println(result);
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

}
