package com.qgp.api.userservice.model.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.lang.NonNull;

import javax.validation.constraints.NotNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserRequest {
    @NonNull
    public String userName;
    @NonNull
    public String userPhone;
    @NotNull(message = "Not null")
    public String userPassword;
}
