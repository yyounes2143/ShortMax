package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlatformServiceClient.kt */
@Metadata
/* loaded from: classes3.dex */
public abstract class m0 implements ServiceConnection {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f16249a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Handler f16250b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private b f16251c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16252d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Messenger f16253e;

    /* renamed from: f  reason: collision with root package name */
    private final int f16254f;

    /* renamed from: g  reason: collision with root package name */
    private final int f16255g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final String f16256h;

    /* renamed from: i  reason: collision with root package name */
    private final int f16257i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final String f16258j;

    /* compiled from: PlatformServiceClient.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(@NotNull Message message) {
            if (o4.a.d(this)) {
                return;
            }
            try {
                Intrinsics.checkNotNullParameter(message, "message");
                m0.this.c(message);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    /* compiled from: PlatformServiceClient.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface b {
        void a(@Nullable Bundle bundle);
    }

    public m0(@NotNull Context context, int i10, int i11, int i12, @NotNull String applicationId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        Context applicationContext = context.getApplicationContext();
        this.f16249a = applicationContext != null ? applicationContext : context;
        this.f16254f = i10;
        this.f16255g = i11;
        this.f16256h = applicationId;
        this.f16257i = i12;
        this.f16258j = str;
        this.f16250b = new a();
    }

    private final void a(Bundle bundle) {
        if (!this.f16252d) {
            return;
        }
        this.f16252d = false;
        b bVar = this.f16251c;
        if (bVar != null) {
            bVar.a(bundle);
        }
    }

    private final void e() {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.f16256h);
        String str = this.f16258j;
        if (str != null) {
            bundle.putString("com.facebook.platform.extra.NONCE", str);
        }
        d(bundle);
        Message obtain = Message.obtain((Handler) null, this.f16254f);
        obtain.arg1 = this.f16257i;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.f16250b);
        try {
            Messenger messenger = this.f16253e;
            if (messenger != null) {
                messenger.send(obtain);
            }
        } catch (RemoteException unused) {
            a(null);
        }
    }

    public final void b() {
        this.f16252d = false;
    }

    protected final void c(@NotNull Message message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (message.what == this.f16255g) {
            Bundle data = message.getData();
            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                a(null);
            } else {
                a(data);
            }
            try {
                this.f16249a.unbindService(this);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    protected abstract void d(@NotNull Bundle bundle);

    public final void f(@Nullable b bVar) {
        this.f16251c = bVar;
    }

    public final boolean g() {
        synchronized (this) {
            boolean z10 = false;
            if (this.f16252d) {
                return false;
            }
            if (l0.t(this.f16257i) == -1) {
                return false;
            }
            Intent l10 = l0.l(this.f16249a);
            if (l10 != null) {
                z10 = true;
                this.f16252d = true;
                this.f16249a.bindService(l10, this, 1);
            }
            return z10;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(@NotNull ComponentName name, @NotNull IBinder service) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(service, "service");
        this.f16253e = new Messenger(service);
        e();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(@NotNull ComponentName name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f16253e = null;
        try {
            this.f16249a.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        a(null);
    }
}
