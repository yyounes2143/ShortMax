package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BoltsMeasurementEventListener.kt */
@Metadata
/* loaded from: classes3.dex */
public final class BoltsMeasurementEventListener extends BroadcastReceiver {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static BoltsMeasurementEventListener f16085c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f16087a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f16084b = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final String f16086d = "com.parse.bolts.measurement_event";

    /* compiled from: BoltsMeasurementEventListener.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final BoltsMeasurementEventListener a(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (BoltsMeasurementEventListener.a() != null) {
                return BoltsMeasurementEventListener.a();
            }
            BoltsMeasurementEventListener boltsMeasurementEventListener = new BoltsMeasurementEventListener(context, null);
            BoltsMeasurementEventListener.b(boltsMeasurementEventListener);
            BoltsMeasurementEventListener.c(boltsMeasurementEventListener);
            return BoltsMeasurementEventListener.a();
        }

        private a() {
        }
    }

    public /* synthetic */ BoltsMeasurementEventListener(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    public static final /* synthetic */ BoltsMeasurementEventListener a() {
        if (o4.a.d(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            return f16085c;
        } catch (Throwable th2) {
            o4.a.b(th2, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    public static final /* synthetic */ void b(BoltsMeasurementEventListener boltsMeasurementEventListener) {
        if (o4.a.d(BoltsMeasurementEventListener.class)) {
            return;
        }
        try {
            boltsMeasurementEventListener.e();
        } catch (Throwable th2) {
            o4.a.b(th2, BoltsMeasurementEventListener.class);
        }
    }

    public static final /* synthetic */ void c(BoltsMeasurementEventListener boltsMeasurementEventListener) {
        if (o4.a.d(BoltsMeasurementEventListener.class)) {
            return;
        }
        try {
            f16085c = boltsMeasurementEventListener;
        } catch (Throwable th2) {
            o4.a.b(th2, BoltsMeasurementEventListener.class);
        }
    }

    private final void d() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this.f16087a);
            Intrinsics.checkNotNullExpressionValue(localBroadcastManager, "getInstance(applicationContext)");
            localBroadcastManager.unregisterReceiver(this);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void e() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this.f16087a);
            Intrinsics.checkNotNullExpressionValue(localBroadcastManager, "getInstance(applicationContext)");
            localBroadcastManager.registerReceiver(this, new IntentFilter(f16086d));
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void finalize() throws Throwable {
        if (o4.a.d(this)) {
            return;
        }
        try {
            d();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        String str;
        Bundle bundle;
        if (o4.a.d(this)) {
            return;
        }
        try {
            com.facebook.appevents.h0 h0Var = new com.facebook.appevents.h0(context);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("bf_");
            Set<String> set = null;
            if (intent != null) {
                str = intent.getStringExtra("event_name");
            } else {
                str = null;
            }
            sb2.append(str);
            String sb3 = sb2.toString();
            if (intent != null) {
                bundle = intent.getBundleExtra("event_args");
            } else {
                bundle = null;
            }
            Bundle bundle2 = new Bundle();
            if (bundle != null) {
                set = bundle.keySet();
            }
            if (set != null) {
                for (String key : set) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    bundle2.putString(new Regex("[ -]*$").replace(new Regex("^[ -]*").replace(new Regex("[^0-9a-zA-Z _-]").replace(key, "-"), ""), ""), (String) bundle.get(key));
                }
            }
            h0Var.d(sb3, bundle2);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private BoltsMeasurementEventListener(Context context) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.f16087a = applicationContext;
    }
}
