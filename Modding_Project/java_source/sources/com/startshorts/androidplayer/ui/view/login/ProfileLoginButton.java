package com.startshorts.androidplayer.ui.view.login;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProfileLoginButton.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ProfileLoginButton extends BaseConstraintLayout {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f47443f = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47444b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseTextView f47445c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private LinearLayout f47446d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ImageView f47447e;

    /* compiled from: ProfileLoginButton.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ProfileLoginButton.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
    }

    /* compiled from: ProfileLoginButton.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginButton.this.getMListener();
        }
    }

    /* compiled from: ProfileLoginButton.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginButton.this.getMListener();
        }
    }

    /* compiled from: ProfileLoginButton.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginButton.this.getMListener();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileLoginButton(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void v() {
        if (Intrinsics.areEqual(DeviceUtil.f48146a.e(), "ms")) {
            BaseTextView baseTextView = this.f47445c;
            if (baseTextView != null) {
                baseTextView.setTextSize(2, 11.0f);
            }
            BaseTextView baseTextView2 = this.f47445c;
            if (baseTextView2 != null) {
                baseTextView2.setPadding(fc.a.a(getContext(), 9.0f), 0, fc.a.a(getContext(), 9.0f), 0);
            }
        }
        LinearLayout linearLayout = this.f47446d;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new c());
        }
        BaseTextView baseTextView3 = this.f47444b;
        if (baseTextView3 != null) {
            baseTextView3.setOnClickListener(new d());
        }
    }

    private final void w() {
        ImageView imageView = this.f47447e;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_profile_sign_in;
    }

    @Nullable
    public final b getMListener() {
        return null;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "ProfileLoginButton";
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47445c = (BaseTextView) findViewById(R$id.login_button);
        this.f47446d = (LinearLayout) findViewById(R$id.ll_login_button);
        this.f47447e = (ImageView) findViewById(R$id.reward_iv);
        v();
        w();
    }

    public final void release() {
    }

    public final void setMListener(@Nullable b bVar) {
    }
}
