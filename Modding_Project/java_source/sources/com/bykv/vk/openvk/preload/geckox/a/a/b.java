package com.bykv.vk.openvk.preload.geckox.a.a;

import android.annotation.SuppressLint;
import java.io.File;
import java.util.List;
/* compiled from: CachePolicy.java */
@SuppressLint({"CI_StaticFieldLeak"})
/* loaded from: classes3.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f11305a = new d();

    /* renamed from: b  reason: collision with root package name */
    public static final b f11306b;

    /* renamed from: c  reason: collision with root package name */
    protected a f11307c;

    /* renamed from: d  reason: collision with root package name */
    protected File f11308d;

    /* renamed from: e  reason: collision with root package name */
    protected List<String> f11309e;

    static {
        new f();
        f11306b = new e();
    }

    public abstract void a();

    public void a(a aVar, File file, List<String> list) {
        this.f11307c = aVar;
        this.f11308d = file;
        this.f11309e = list;
    }
}
