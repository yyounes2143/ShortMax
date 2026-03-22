package com.startshorts.androidplayer.ui.dialog.immersion;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogTtpPmentProcessBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TTPProcessDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a extends fi.a<DialogTtpPmentProcessBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final C0633a f45547e = new C0633a(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f45548d;

    /* compiled from: TTPProcessDialog.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.ui.dialog.immersion.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0633a {
        public /* synthetic */ C0633a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0633a() {
        }
    }

    /* compiled from: TTPProcessDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.C();
            a.this.dismiss();
            b x10 = a.this.x();
            if (x10 != null) {
                x10.a();
            }
        }
    }

    /* compiled from: TTPProcessDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.B();
            a.this.dismiss();
            b x10 = a.this.x();
            if (x10 != null) {
                x10.a();
            }
        }
    }

    /* compiled from: TTPProcessDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.A();
            a.this.dismiss();
            b x10 = a.this.x();
            if (x10 != null) {
                x10.onDismiss();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context, @Nullable b bVar) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f45548d = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        EventManager.s0(EventManager.f42463a, "confirm_purchase_pop_close", null, 0L, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("status", "pending");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "confirm_purchase_pop_click", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("status", "success");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "confirm_purchase_pop_click", bundle, 0L, 4, null);
    }

    private final void D() {
        EventManager.s0(EventManager.f42463a, "confirm_purchase_pop_show", null, 0L, 6, null);
    }

    private final void y() {
        i().f39358d.setOnClickListener(new c());
        i().f39357c.setOnClickListener(new d());
    }

    private final void z() {
        i().f39355a.setOnClickListener(new e());
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_ttp_pment_process;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "TTPProcessDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (jk.g.a(38.0f) * 2);
    }

    @Override // fi.a
    public void p() {
        z();
        y();
        D();
    }

    @Nullable
    public final b x() {
        return this.f45548d;
    }

    /* compiled from: TTPProcessDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();

        void onDismiss();

        /* compiled from: TTPProcessDialog.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.dialog.immersion.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0634a {
            public static void a(@NotNull b bVar) {
            }
        }
    }
}
