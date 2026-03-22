package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class Tag implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6190a;

    /* renamed from: b  reason: collision with root package name */
    private String f6191b;

    public Tag(String str, String str2) {
        this.f6190a = str;
        this.f6191b = str2;
    }

    public String b() {
        return this.f6190a;
    }

    public String d() {
        return this.f6191b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Tag tag = (Tag) obj;
        String str = this.f6190a;
        if (str == null ? tag.f6190a != null : !str.equals(tag.f6190a)) {
            return false;
        }
        String str2 = this.f6191b;
        String str3 = tag.f6191b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f6190a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.f6191b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }
}
