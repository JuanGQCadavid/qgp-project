package com.qgp.api.userservice.model.response;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Builder
@AllArgsConstructor
public class UserData {
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String userToken;

    private String userId;
    private String userName;
    private String userPhotoUrl;

}
