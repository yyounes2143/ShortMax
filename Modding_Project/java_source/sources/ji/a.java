package ji;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import com.facebook.drawee.generic.RoundingParams;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.DialogEnablePipBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EnablePipDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a extends fi.a<DialogEnablePipBinding> {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final C0833a f60392g = new C0833a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f60393d;

    /* renamed from: e  reason: collision with root package name */
    private final int f60394e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final b f60395f;

    /* compiled from: EnablePipDialog.kt */
    @Metadata
    /* renamed from: ji.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0833a {
        public /* synthetic */ C0833a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0833a() {
        }
    }

    /* compiled from: EnablePipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* compiled from: EnablePipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.w();
            a.this.dismiss();
            a.this.f60395f.a();
        }
    }

    /* compiled from: EnablePipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Activity activity, @NotNull String from, int i10, @NotNull b listener) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f60393d = from;
        this.f60394e = i10;
        this.f60395f = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", this.f60393d);
        bundle.putInt("task_id", this.f60394e);
        bundle.putString("task_name", "OpenFloatingWindow");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "dialog_click", bundle, 0L, 4, null);
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_enable_pip;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "EnablePipDialog";
    }

    @Override // fi.a
    public void p() {
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = i().f38743e;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setCornerTransform(true);
        frescoConfig.setRoundingParams(new RoundingParams().p(g.b(16.0f), g.b(16.0f), 0.0f, 0.0f));
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        i().f38743e.setActualImageResource(R$drawable.ic_pip_animation_bg);
        i().f38741c.setOnClickListener(new c());
        i().f38740b.setOnClickListener(new d());
    }

    @Override // fi.a, android.app.Dialog
    public void show() {
        super.show();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", this.f60393d);
        bundle.putInt("task_id", this.f60394e);
        bundle.putString("task_name", "OpenFloatingWindow");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "dialog_show", bundle, 0L, 4, null);
    }
}
