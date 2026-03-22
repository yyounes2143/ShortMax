package com.bytedance.bdtracker;

import android.app.Activity;
import com.bytedance.applog.exposure.ViewExposureManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes3.dex */
public final class z0 {

    /* renamed from: a  reason: collision with root package name */
    public final Runnable f12537a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public v0 f12538b;

    /* renamed from: c  reason: collision with root package name */
    public final ViewExposureManager f12539c;

    /* loaded from: classes3.dex */
    public static final class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Activity currActivity = z0.this.f12539c.getCurrActivity();
            if (currActivity != null) {
                z0.this.f12539c.checkViewExposureFromActivity$agent_liteGlobalRelease(currActivity);
            }
        }
    }

    public z0(@NotNull ViewExposureManager manager) {
        Intrinsics.checkParameterIsNotNull(manager, "manager");
        this.f12539c = manager;
        a aVar = new a();
        this.f12537a = aVar;
        this.f12538b = new w0(aVar);
    }

    public final void a(@Nullable q0 q0Var) {
        v0 w0Var;
        if (q0Var == null || y0.f12528a[q0Var.ordinal()] != 1) {
            w0Var = new w0(this.f12537a);
        } else {
            w0Var = new x0(this.f12537a);
        }
        this.f12538b = w0Var;
    }
}
