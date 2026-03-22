package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.k  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3024k {

    /* renamed from: a  reason: collision with root package name */
    public int f24904a;

    /* renamed from: b  reason: collision with root package name */
    public int f24905b;

    /* renamed from: c  reason: collision with root package name */
    public String f24906c;

    /* renamed from: d  reason: collision with root package name */
    public final WeakReference f24907d;

    /* renamed from: e  reason: collision with root package name */
    public final HashSet f24908e;

    /* renamed from: f  reason: collision with root package name */
    public final String f24909f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList f24910g;

    /* renamed from: h  reason: collision with root package name */
    public final Set f24911h;

    public C3024k(String batchId, Set rawAssets, InterfaceC3185u1 listener, String str, int i10) {
        str = (i10 & 16) != 0 ? null : str;
        Intrinsics.checkNotNullParameter(batchId, "batchId");
        Intrinsics.checkNotNullParameter(rawAssets, "rawAssets");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f24907d = new WeakReference(listener);
        this.f24910g = new ArrayList();
        this.f24908e = new HashSet();
        this.f24911h = rawAssets;
        this.f24909f = str;
    }

    public final String toString() {
        return "AdAssetBatch{rawAssets=" + this.f24911h + ", batchDownloadSuccessCount=" + this.f24904a + ", batchDownloadFailureCount=" + this.f24905b + '}';
    }
}
