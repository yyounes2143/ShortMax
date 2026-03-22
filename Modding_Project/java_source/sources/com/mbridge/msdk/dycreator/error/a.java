package com.mbridge.msdk.dycreator.error;
/* compiled from: DyError.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f26562a;

    /* renamed from: b  reason: collision with root package name */
    private String f26563b;

    public a(b bVar) {
        if (bVar != null) {
            this.f26562a = bVar.a();
            this.f26563b = bVar.b();
        }
    }

    public String toString() {
        return "DyError{errorCode=" + this.f26562a + '}';
    }

    public a(int i10, String str) {
        this.f26562a = i10;
        this.f26563b = str;
    }
}
