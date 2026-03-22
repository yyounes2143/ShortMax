package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsFileMarker.java */
/* loaded from: classes5.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private final String f20840a;

    /* renamed from: b  reason: collision with root package name */
    private final h8.g f20841b;

    public z(String str, h8.g gVar) {
        this.f20840a = str;
        this.f20841b = gVar;
    }

    private File b() {
        return this.f20841b.g(this.f20840a);
    }

    public boolean a() {
        try {
            return b().createNewFile();
        } catch (IOException e10) {
            z7.g f10 = z7.g.f();
            f10.e("Error creating marker: " + this.f20840a, e10);
            return false;
        }
    }

    public boolean c() {
        return b().exists();
    }

    public boolean d() {
        return b().delete();
    }
}
