package com.amazonaws.services.s3.model;
/* loaded from: classes2.dex */
public class Grant {

    /* renamed from: a  reason: collision with root package name */
    private Grantee f6058a;

    /* renamed from: b  reason: collision with root package name */
    private Permission f6059b;

    public Grant(Grantee grantee, Permission permission) {
        this.f6058a = grantee;
        this.f6059b = permission;
    }

    public Grantee a() {
        return this.f6058a;
    }

    public Permission b() {
        return this.f6059b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Grant grant = (Grant) obj;
        Grantee grantee = this.f6058a;
        if (grantee == null) {
            if (grant.f6058a != null) {
                return false;
            }
        } else if (!grantee.equals(grant.f6058a)) {
            return false;
        }
        if (this.f6059b == grant.f6059b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        Grantee grantee = this.f6058a;
        int i10 = 0;
        if (grantee == null) {
            hashCode = 0;
        } else {
            hashCode = grantee.hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        Permission permission = this.f6059b;
        if (permission != null) {
            i10 = permission.hashCode();
        }
        return i11 + i10;
    }

    public String toString() {
        return "Grant [grantee=" + this.f6058a + ", permission=" + this.f6059b + "]";
    }
}
