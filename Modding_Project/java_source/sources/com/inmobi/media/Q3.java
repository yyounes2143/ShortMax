package com.inmobi.media;

import java.io.File;
/* loaded from: classes5.dex */
public final class Q3 {

    /* renamed from: a  reason: collision with root package name */
    public final String f24028a;

    /* renamed from: b  reason: collision with root package name */
    public final long[] f24029b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f24030c;

    /* renamed from: d  reason: collision with root package name */
    public P3 f24031d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ S3 f24032e;

    public Q3(S3 s32, String str) {
        this.f24032e = s32;
        this.f24028a = str;
        this.f24029b = new long[s32.f24113h];
    }

    public final File a(int i10) {
        File file = this.f24032e.f24106a;
        return new File(file, this.f24028a + "." + i10);
    }

    public final File b(int i10) {
        File file = this.f24032e.f24106a;
        return new File(file, this.f24028a + "." + i10 + ".tmp");
    }
}
