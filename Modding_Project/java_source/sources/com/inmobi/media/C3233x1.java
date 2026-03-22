package com.inmobi.media;

import com.inmobi.media.C3233x1;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;
/* renamed from: com.inmobi.media.x1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3233x1 implements kotlin.properties.c {

    /* renamed from: a  reason: collision with root package name */
    public final Lambda f25407a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f25408b;

    /* renamed from: c  reason: collision with root package name */
    public volatile Object f25409c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f25410d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f25411e;

    public /* synthetic */ C3233x1(Integer num, Function0 function0, boolean z10, int i10) {
        this((Object) num, function0, (i10 & 4) != 0 ? false : z10, false);
    }

    public final void a() {
        if (this.f25410d.compareAndSet(false, true)) {
            this.f25411e = true;
            ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).submit(new Runnable() { // from class: ub.e8
                @Override // java.lang.Runnable
                public final void run() {
                    C3233x1.a(C3233x1.this);
                }
            });
        }
    }

    @Override // kotlin.properties.c
    public final Object getValue(Object obj, KProperty property) {
        Intrinsics.checkNotNullParameter(property, "property");
        if (this.f25408b || !this.f25411e) {
            a();
        }
        return this.f25409c;
    }

    public C3233x1(Object obj, Function0 refreshLogic, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(refreshLogic, "refreshLogic");
        this.f25407a = (Lambda) refreshLogic;
        this.f25408b = z10;
        this.f25409c = obj;
        this.f25410d = new AtomicBoolean(false);
        if (z11) {
            a();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.Lambda] */
    public static final void a(C3233x1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f25409c = this$0.f25407a.invoke();
        } catch (Exception unused) {
        } catch (Throwable th2) {
            this$0.f25410d.set(false);
            throw th2;
        }
        this$0.f25410d.set(false);
    }
}
