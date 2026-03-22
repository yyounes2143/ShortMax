package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class CanonicalGrantee implements Grantee, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6021a = null;

    /* renamed from: b  reason: collision with root package name */
    private String f6022b = null;

    public CanonicalGrantee(String str) {
        setIdentifier(str);
    }

    public void b(String str) {
        this.f6022b = str;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CanonicalGrantee) {
            return this.f6021a.equals(((CanonicalGrantee) obj).f6021a);
        }
        return false;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public String getIdentifier() {
        return this.f6021a;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public String getTypeIdentifier() {
        return "id";
    }

    public int hashCode() {
        return this.f6021a.hashCode();
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public void setIdentifier(String str) {
        this.f6021a = str;
    }
}
