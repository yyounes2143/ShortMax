package com.amazonaws.services.s3.model;

import androidx.autofill.HintConstants;
/* loaded from: classes2.dex */
public class EmailAddressGrantee implements Grantee {

    /* renamed from: a  reason: collision with root package name */
    private String f6047a = null;

    public EmailAddressGrantee(String str) {
        setIdentifier(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EmailAddressGrantee emailAddressGrantee = (EmailAddressGrantee) obj;
        String str = this.f6047a;
        if (str == null) {
            if (emailAddressGrantee.f6047a != null) {
                return false;
            }
        } else if (!str.equals(emailAddressGrantee.f6047a)) {
            return false;
        }
        return true;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public String getIdentifier() {
        return this.f6047a;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public String getTypeIdentifier() {
        return HintConstants.AUTOFILL_HINT_EMAIL_ADDRESS;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f6047a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return 31 + hashCode;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public void setIdentifier(String str) {
        this.f6047a = str;
    }

    public String toString() {
        return this.f6047a;
    }
}
