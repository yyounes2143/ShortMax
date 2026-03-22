package li;

import android.content.Context;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.tip.Builder;
import com.startshorts.androidplayer.databinding.DialogTipBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TipDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c extends fi.a<DialogTipBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f62227e = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Builder f62228d;

    /* compiled from: TipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: TipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            c.this.dismiss();
        }
    }

    /* compiled from: TipDialog.kt */
    @Metadata
    /* renamed from: li.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0866c extends yd.d {
        C0866c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            c.this.dismiss();
            View.OnClickListener negativeButtonClickListener = c.this.f62228d.getNegativeButtonClickListener();
            if (negativeButtonClickListener != null) {
                negativeButtonClickListener.onClick(v10);
            }
        }
    }

    /* compiled from: TipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            c.this.dismiss();
            View.OnClickListener positiveButtonClickListener = c.this.f62228d.getPositiveButtonClickListener();
            if (positiveButtonClickListener != null) {
                positiveButtonClickListener.onClick(v10);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context, @NotNull Builder builder) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f62228d = builder;
    }

    private final void v() {
        BaseTextView baseTextView = i().f39326c;
        baseTextView.setText(this.f62228d.getNegativeButtonText());
        if (this.f62228d.getNegativeButtonClickListener() == null) {
            baseTextView.setOnClickListener(new b());
        } else {
            baseTextView.setOnClickListener(new C0866c());
        }
    }

    private final void w() {
        BaseTextView baseTextView = i().f39327d;
        baseTextView.setText(this.f62228d.getPositiveButtonText());
        if (this.f62228d.getPositiveButtonClickListener() != null) {
            baseTextView.setOnClickListener(new d());
        }
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_tip;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "TipDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (g.a(60.0f) * 2);
    }

    @Override // fi.a
    public void p() {
        i().f39324a.setText(this.f62228d.getContent());
        w();
        v();
    }
}
