package com.apm.insight.k;

import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: CrashUploadHandler.java */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentLinkedQueue<c> f6999a = new ConcurrentLinkedQueue<>();

    /* compiled from: CrashUploadHandler.java */
    /* renamed from: com.apm.insight.k.c$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7000a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f7000a = iArr;
            try {
                iArr[CrashType.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7000a[CrashType.LAUNCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7000a[CrashType.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: CrashUploadHandler.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private JSONObject f7001a;

        /* renamed from: b  reason: collision with root package name */
        private JSONObject f7002b;

        /* renamed from: c  reason: collision with root package name */
        private CrashType f7003c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(JSONObject jSONObject, CrashType crashType) {
            this.f7003c = crashType;
            if (crashType == CrashType.LAUNCH) {
                this.f7001a = ((JSONArray) jSONObject.opt("data")).optJSONObject(0);
            } else {
                this.f7001a = jSONObject;
            }
            this.f7002b = jSONObject.optJSONObject("header");
        }

        @Nullable
        public final String a() {
            return this.f7001a.optString("crash_thread_name", null);
        }

        public final long b() {
            return this.f7001a.optInt("app_start_time", -1);
        }

        @Nullable
        public final String c() {
            int i10 = AnonymousClass1.f7000a[this.f7003c.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                    return this.f7001a.optString("data", null);
                }
                return this.f7001a.optString("stack", null);
            }
            return this.f7001a.optString("data", null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CrashType crashType, JSONObject jSONObject) {
        ConcurrentLinkedQueue<c> concurrentLinkedQueue = f6999a;
        if (concurrentLinkedQueue != null && !concurrentLinkedQueue.isEmpty()) {
            new a(jSONObject, crashType);
            while (!f6999a.isEmpty()) {
                f6999a.poll();
            }
            f6999a = null;
        }
    }
}
