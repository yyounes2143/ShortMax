package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class RegisterMfaContinuation extends ChallengeContinuation {

    /* renamed from: k  reason: collision with root package name */
    private List<String> f5615k;

    public RegisterMfaContinuation(CognitoUser cognitoUser, Context context, String str, String str2, String str3, RespondToAuthChallengeResult respondToAuthChallengeResult, boolean z10, AuthenticationHandler authenticationHandler) {
        super(cognitoUser, context, str, str2, str3, respondToAuthChallengeResult, z10, authenticationHandler);
        this.f5615k = c(a().get("MFAS_CAN_SETUP"));
    }

    private List<String> c(String str) {
        return Arrays.asList(str.replace("[", "").replace("]", "").replace("\"", "").split(","));
    }
}
