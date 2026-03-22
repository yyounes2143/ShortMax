package ei;

import android.content.Context;
import android.view.View;
import ce.j;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.DialogActBinding;
import com.startshorts.androidplayer.manager.act.ActEntranceManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ActDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c extends fi.a<DialogActBinding> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ActResource f51346d;

    /* renamed from: e  reason: collision with root package name */
    private final int f51347e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull ActResource actResource, @NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(actResource, "actResource");
        Intrinsics.checkNotNullParameter(context, "context");
        this.f51346d = actResource;
        this.f51347e = R$layout.dialog_act;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(c cVar, View view) {
        cVar.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(c cVar, View view) {
        EventManager eventManager = EventManager.f42463a;
        eventManager.S("bf_discover_window", cVar.f51346d);
        EventManager.s0(eventManager, "bf_discover_window_click", EventManager.x(eventManager, cVar.f51346d, false, 2, null), 0L, 4, null);
        j jVar = j.f3485a;
        Context context = cVar.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        j.o(jVar, context, "bf_discover_window", cVar.f51346d, null, 8, null);
        cVar.dismiss();
    }

    @Override // fi.a, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        ActEntranceManager.f41563a.k();
    }

    @Override // fi.a
    public int f() {
        return -1;
    }

    @Override // fi.a
    public int g() {
        return this.f51347e;
    }

    @Override // fi.a
    public int n() {
        return -1;
    }

    @Override // fi.a
    public void p() {
        i().f38614b.setOnClickListener(new View.OnClickListener() { // from class: ei.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.w(c.this, view);
            }
        });
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = i().f38613a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setAutoPlayAnim(true);
        frescoConfig.setUrl(this.f51346d.getResourceMap());
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        i().f38613a.setOnClickListener(new View.OnClickListener() { // from class: ei.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.x(c.this, view);
            }
        });
    }

    @Override // fi.a, android.app.Dialog
    public void show() {
        super.show();
        EventManager eventManager = EventManager.f42463a;
        eventManager.T("bf_discover_window", this.f51346d);
        EventManager.s0(eventManager, "bf_discover_window_show", EventManager.x(eventManager, this.f51346d, false, 2, null), 0L, 4, null);
    }
}
