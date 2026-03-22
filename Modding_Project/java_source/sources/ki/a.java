package ki;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.databinding.DialogRfmGuideBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import jk.b0;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RFMGuideDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a extends fi.a<DialogRfmGuideBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final C0847a f60726e = new C0847a(null);

    /* renamed from: d  reason: collision with root package name */
    private final int f60727d;

    /* compiled from: RFMGuideDialog.kt */
    @Metadata
    /* renamed from: ki.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0847a {
        public /* synthetic */ C0847a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0847a() {
        }
    }

    /* compiled from: RFMGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.dismiss();
        }
    }

    /* compiled from: RFMGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
        }
    }

    /* compiled from: RFMGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
        }
    }

    /* compiled from: RFMGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ BaseTextView f60729e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ a f60730f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(BaseTextView baseTextView, a aVar) {
            super(0L, 1, null);
            this.f60729e = baseTextView;
            this.f60730f = aVar;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager.s0(EventManager.f42463a, "rfm_pop_click", null, 0L, 6, null);
            FragmentContainer.a aVar = FragmentContainer.f45006p;
            Context context = this.f60729e.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            aVar.b(context, com.startshorts.androidplayer.ui.fragment.a.f45609a.n(), new StringBundle(TextureRenderKeys.KEY_IS_ACTION, "discover_not"));
            this.f60730f.dismiss();
        }
    }

    /* compiled from: RFMGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends yd.d {
        f() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f60727d = 8388627;
    }

    private final void u() {
        i().f39291b.setOnClickListener(new b());
    }

    private final void v() {
        View view = i().f39292c;
        Intrinsics.checkNotNull(view);
        b0.h(view, z.f51786a.j(), (int) (n() * 0.24025974f), 0, 0);
        view.setOnClickListener(new c());
    }

    private final void w() {
        ImageView imageView = i().f39294e;
        Intrinsics.checkNotNull(imageView);
        b0.h(imageView, 0, 0, (int) (n() * 0.022727273f), 0);
        imageView.setOnClickListener(new d());
    }

    private final void x() {
        BaseTextView baseTextView = i().f39295f;
        Intrinsics.checkNotNull(baseTextView);
        b0.h(baseTextView, (int) (n() * 0.16558442f), (int) (n() * 0.084415585f), (int) (n() * 0.07467532f), 0);
        baseTextView.setOnClickListener(new e(baseTextView, this));
    }

    private final void y() {
        ConstraintLayout rootLayout = i().f39296g;
        Intrinsics.checkNotNullExpressionValue(rootLayout, "rootLayout");
        b0.h(rootLayout, z.f51786a.g(), -((int) (n() * 0.097402595f)), 0, 0);
        i().f39296g.setOnClickListener(new f());
    }

    private final void z() {
        BaseTextView baseTextView = i().f39297h;
        Intrinsics.checkNotNull(baseTextView);
        z zVar = z.f51786a;
        b0.h(baseTextView, zVar.j(), (int) (n() * 0.6363636f), 0, 0);
        BaseTextView baseTextView2 = i().f39293d;
        Intrinsics.checkNotNull(baseTextView2);
        b0.h(baseTextView2, zVar.j(), (int) (n() * 0.025974026f), 0, 0);
    }

    @Override // fi.a
    public int f() {
        return -2;
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_rfm_guide;
    }

    @Override // fi.a
    public int h() {
        return this.f60727d;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "RFMGuideDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - g.a(48.0f);
    }

    @Override // fi.a
    public void p() {
        y();
        u();
        v();
        w();
        z();
        x();
        EventManager.s0(EventManager.f42463a, "rfm_pop_show", null, 0L, 6, null);
    }
}
