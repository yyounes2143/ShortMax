package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class ResendConfirmationCodeResult implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private CodeDeliveryDetailsType f5855a;

    public CodeDeliveryDetailsType b() {
        return this.f5855a;
    }

    public void d(CodeDeliveryDetailsType codeDeliveryDetailsType) {
        this.f5855a = codeDeliveryDetailsType;
    }

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ResendConfirmationCodeResult)) {
            return false;
        }
        ResendConfirmationCodeResult resendConfirmationCodeResult = (ResendConfirmationCodeResult) obj;
        if (resendConfirmationCodeResult.b() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (b() == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 ^ z11) {
            return false;
        }
        if (resendConfirmationCodeResult.b() == null || resendConfirmationCodeResult.b().equals(b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        if (b() == null) {
            hashCode = 0;
        } else {
            hashCode = b().hashCode();
        }
        return 31 + hashCode;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (b() != null) {
            sb2.append("CodeDeliveryDetails: " + b());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
