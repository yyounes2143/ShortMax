package mi;

import android.content.Context;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.ShortsPausePlayEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortsResumePlayEvent;
import com.startshorts.androidplayer.bean.update.UpdateData;
import com.startshorts.androidplayer.databinding.DialogUpdateBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import com.startshorts.androidplayer.repo.update.UpdateRepo;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UpdateDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d extends fi.a<DialogUpdateBinding> {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f62513f = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private boolean f62514d;

    /* renamed from: e  reason: collision with root package name */
    private final int f62515e;

    /* compiled from: UpdateDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f62515e = R$layout.dialog_update;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(d dVar, View view) {
        dVar.dismiss();
    }

    private final void x() {
        String storeLink;
        UpdateManager.f42992a.r();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("goToGooglePlay -> ");
        UpdateRepo updateRepo = UpdateRepo.f44764a;
        sb2.append(updateRepo.g());
        o(sb2.toString());
        UpdateData g10 = updateRepo.g();
        if (g10 != null && (storeLink = g10.getStoreLink()) != null) {
            IntentUtil intentUtil = IntentUtil.f48164a;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            intentUtil.c(context, storeLink);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(d dVar, View view) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        UpdateManager updateManager = UpdateManager.f42992a;
        bundle.putString("type", updateManager.g());
        bundle.putString(TextureRenderKeys.KEY_IS_ACTION, "update");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "update_click", bundle, 0L, 4, null);
        dVar.f62514d = true;
        if (!updateManager.j()) {
            dVar.dismiss();
        }
        dVar.x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(d dVar, View view) {
        dVar.dismiss();
    }

    @Override // fi.a, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (!this.f62514d) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("type", UpdateManager.f42992a.g());
            bundle.putString(TextureRenderKeys.KEY_IS_ACTION, "cancel");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "update_click", bundle, 0L, 4, null);
        }
        au.c.d().l(new ShortsResumePlayEvent());
        super.dismiss();
        UpdateManager.f42992a.p();
    }

    @Override // fi.a
    public int g() {
        return this.f62515e;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "UpdateDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @Override // fi.a
    public void p() {
        UpdateData g10 = UpdateRepo.f44764a.g();
        if (g10 == null) {
            dismiss();
            return;
        }
        setCanceledOnTouchOutside(false);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        UpdateManager updateManager = UpdateManager.f42992a;
        bundle.putString("type", updateManager.g());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "update_show", bundle, 0L, 4, null);
        o("showDialog updateData=" + g10 + '}');
        updateManager.q();
        i().f39368f.setOnClickListener(new View.OnClickListener() { // from class: mi.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.y(d.this, view);
            }
        });
        i().f39366d.setOnClickListener(new View.OnClickListener() { // from class: mi.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.z(d.this, view);
            }
        });
        i().f39364b.setOnClickListener(new View.OnClickListener() { // from class: mi.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.A(d.this, view);
            }
        });
        BaseTextView baseTextView = i().f39365c;
        baseTextView.setText(g10.getUpdateRemark());
        baseTextView.setMovementMethod(ScrollingMovementMethod.getInstance());
        if (updateManager.j()) {
            i().f39364b.setVisibility(8);
            i().f39366d.setVisibility(8);
            setCancelable(false);
        }
    }

    @Override // fi.a, android.app.Dialog
    public void show() {
        super.show();
        au.c.d().l(new ShortsPausePlayEvent());
    }
}
