package com.bykv.vk.openvk.preload.geckox.f.a;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: FileLoader.java */
/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private File f11405a;

    public a(File file) {
        this.f11405a = file;
    }

    protected abstract InputStream a(File file, String str) throws IOException;

    public final InputStream a(String str) throws IOException {
        return a(this.f11405a, str);
    }

    protected abstract boolean b(File file, String str) throws IOException;

    public final boolean b(String str) throws IOException {
        return b(this.f11405a, str);
    }
}
