package com.apm.insight.l;

import android.annotation.TargetApi;
import android.app.ActivityManager;
/* compiled from: JellyBeanV16Compat.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static a f7074a = new b((byte) 0);

    /* compiled from: JellyBeanV16Compat.java */
    /* loaded from: classes2.dex */
    static class a {
        private a() {
        }

        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return 0L;
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    /* compiled from: JellyBeanV16Compat.java */
    @TargetApi(16)
    /* loaded from: classes2.dex */
    static class b extends a {
        private b() {
            super((byte) 0);
        }

        @Override // com.apm.insight.l.i.a
        public final long a(ActivityManager.MemoryInfo memoryInfo) {
            return memoryInfo.totalMem;
        }

        /* synthetic */ b(byte b10) {
            this();
        }
    }

    public static long a(ActivityManager.MemoryInfo memoryInfo) {
        return f7074a.a(memoryInfo);
    }
}
