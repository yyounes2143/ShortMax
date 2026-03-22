package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class AbortIncompleteMultipartUpload implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private int f5958a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public AbortIncompleteMultipartUpload clone() throws CloneNotSupportedException {
        try {
            return (AbortIncompleteMultipartUpload) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", e10);
        }
    }

    public void d(int i10) {
        this.f5958a = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && this.f5958a == ((AbortIncompleteMultipartUpload) obj).f5958a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f5958a;
    }
}
