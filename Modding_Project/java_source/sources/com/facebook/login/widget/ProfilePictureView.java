package com.facebook.login.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.AccessToken;
import com.facebook.LoggingBehavior;
import com.facebook.Profile;
import com.facebook.f0;
import com.facebook.internal.a0;
import com.facebook.internal.i0;
import com.facebook.internal.z;
import com.facebook.login.b0;
import com.facebook.login.v;
import com.facebook.login.w;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProfilePictureView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nProfilePictureView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfilePictureView.kt\ncom/facebook/login/widget/ProfilePictureView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,469:1\n1#2:470\n*E\n"})
/* loaded from: classes3.dex */
public final class ProfilePictureView extends FrameLayout {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f16660k = new a(null);
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final String f16661l;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f16662a;

    /* renamed from: b  reason: collision with root package name */
    private int f16663b;

    /* renamed from: c  reason: collision with root package name */
    private int f16664c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Bitmap f16665d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private a0 f16666e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f16667f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private f0 f16668g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private String f16669h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f16670i;

    /* renamed from: j  reason: collision with root package name */
    private int f16671j;

    /* compiled from: ProfilePictureView.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ProfilePictureView.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface b {
    }

    /* compiled from: ProfilePictureView.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c extends f0 {
        c() {
        }

        @Override // com.facebook.f0
        protected void c(@Nullable Profile profile, @Nullable Profile profile2) {
            String str;
            ProfilePictureView profilePictureView = ProfilePictureView.this;
            if (profile2 != null) {
                str = profile2.b();
            } else {
                str = null;
            }
            profilePictureView.setProfileId(str);
            ProfilePictureView.this.i(true);
        }
    }

    static {
        String simpleName = ProfilePictureView.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "ProfilePictureView::class.java.simpleName");
        f16661l = simpleName;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfilePictureView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f16662a = new ImageView(getContext());
        this.f16670i = true;
        this.f16671j = -1;
        e();
    }

    private final int c(boolean z10) {
        int i10;
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            int i11 = this.f16671j;
            if (i11 == -1 && !z10) {
                return 0;
            }
            if (i11 != -4) {
                if (i11 != -3) {
                    if (i11 != -2) {
                        if (i11 != -1) {
                            return 0;
                        }
                        i10 = v.f16619b;
                    } else {
                        i10 = v.f16620c;
                    }
                } else {
                    i10 = v.f16619b;
                }
            } else {
                i10 = v.f16618a;
            }
            return getResources().getDimensionPixelSize(i10);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }

    private final Uri d(String str) {
        Profile b10 = Profile.f14870h.b();
        if (b10 != null && AccessToken.f14731l.h()) {
            return b10.d(this.f16664c, this.f16663b);
        }
        return a0.f16136f.a(this.f16669h, this.f16664c, this.f16663b, str);
    }

    private final void e() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            removeAllViews();
            this.f16662a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.f16662a.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            addView(this.f16662a);
            this.f16668g = new c();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final boolean f() {
        if (this.f16664c == 0 && this.f16663b == 0) {
            return true;
        }
        return false;
    }

    private final void g(AttributeSet attributeSet) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, b0.f16552d0);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…ook_profile_picture_view)");
            setPresetSize(obtainStyledAttributes.getInt(b0.f16556f0, -1));
            setCropped(obtainStyledAttributes.getBoolean(b0.f16554e0, true));
            obtainStyledAttributes.recycle();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void h(com.facebook.internal.b0 b0Var) {
        if (!o4.a.d(this) && b0Var != null) {
            try {
                if (Intrinsics.areEqual(b0Var.c(), this.f16666e)) {
                    this.f16666e = null;
                    Bitmap a10 = b0Var.a();
                    Exception b10 = b0Var.b();
                    if (b10 != null) {
                        i0.f16209e.a(LoggingBehavior.REQUESTS, 6, f16661l, b10.toString());
                    } else if (a10 != null) {
                        setImageBitmap(a10);
                        if (b0Var.d()) {
                            j(false);
                        }
                    }
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(boolean z10) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            boolean m10 = m();
            String str = this.f16669h;
            if (str != null && str.length() != 0 && !f()) {
                if (m10 || z10) {
                    j(true);
                    return;
                }
                return;
            }
            l();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void j(boolean z10) {
        AccessToken e10;
        String m10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            AccessToken.c cVar = AccessToken.f14731l;
            String str = "";
            if (cVar.g() && (e10 = cVar.e()) != null && (m10 = e10.m()) != null) {
                str = m10;
            }
            Uri d10 = d(str);
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            a0 a10 = new a0.a(context, d10).b(z10).d(this).c(new a0.b() { // from class: com.facebook.login.widget.g
                @Override // com.facebook.internal.a0.b
                public final void a(com.facebook.internal.b0 b0Var) {
                    ProfilePictureView.k(ProfilePictureView.this, b0Var);
                }
            }).a();
            a0 a0Var = this.f16666e;
            if (a0Var != null) {
                z.d(a0Var);
            }
            this.f16666e = a10;
            z.f(a10);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(ProfilePictureView this$0, com.facebook.internal.b0 b0Var) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.h(b0Var);
    }

    private final void l() {
        int i10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            a0 a0Var = this.f16666e;
            if (a0Var != null) {
                z.d(a0Var);
            }
            Bitmap bitmap = this.f16667f;
            if (bitmap == null) {
                if (this.f16670i) {
                    i10 = w.f16622b;
                } else {
                    i10 = w.f16621a;
                }
                setImageBitmap(BitmapFactory.decodeResource(getResources(), i10));
                return;
            }
            m();
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, this.f16664c, this.f16663b, false);
            Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(custo…idth, queryHeight, false)");
            setImageBitmap(createScaledBitmap);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final boolean m() {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            int height = getHeight();
            int width = getWidth();
            boolean z10 = true;
            if (width >= 1 && height >= 1) {
                int c10 = c(false);
                if (c10 != 0) {
                    height = c10;
                    width = height;
                }
                if (width <= height) {
                    if (this.f16670i) {
                        height = width;
                    } else {
                        height = 0;
                    }
                } else if (this.f16670i) {
                    width = height;
                } else {
                    width = 0;
                }
                if (width == this.f16664c && height == this.f16663b) {
                    z10 = false;
                }
                this.f16664c = width;
                this.f16663b = height;
                return z10;
            }
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final void setImageBitmap(Bitmap bitmap) {
        if (!o4.a.d(this) && bitmap != null) {
            try {
                this.f16665d = bitmap;
                this.f16662a.setImageBitmap(bitmap);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    @Nullable
    public final b getOnErrorListener() {
        return null;
    }

    public final int getPresetSize() {
        return this.f16671j;
    }

    @Nullable
    public final String getProfileId() {
        return this.f16669h;
    }

    public final boolean getShouldUpdateOnProfileChange() {
        f0 f0Var = this.f16668g;
        if (f0Var != null) {
            return f0Var.b();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f16666e = null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        i(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        boolean z10;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i10);
        boolean z11 = true;
        if (View.MeasureSpec.getMode(i11) != 1073741824 && layoutParams.height == -2) {
            size = c(true);
            i11 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
            z10 = true;
        } else {
            z10 = false;
        }
        if (View.MeasureSpec.getMode(i10) != 1073741824 && layoutParams.width == -2) {
            size2 = c(true);
            i10 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
        } else {
            z11 = z10;
        }
        if (z11) {
            setMeasuredDimension(size2, size);
            measureChildren(i10, i11);
            return;
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@NotNull Parcelable state) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (!Intrinsics.areEqual(state.getClass(), Bundle.class)) {
            super.onRestoreInstanceState(state);
            return;
        }
        Bundle bundle = (Bundle) state;
        super.onRestoreInstanceState(bundle.getParcelable("ProfilePictureView_superState"));
        setProfileId(bundle.getString("ProfilePictureView_profileId"));
        setPresetSize(bundle.getInt("ProfilePictureView_presetSize"));
        setCropped(bundle.getBoolean("ProfilePictureView_isCropped"));
        this.f16664c = bundle.getInt("ProfilePictureView_width");
        this.f16663b = bundle.getInt("ProfilePictureView_height");
        i(true);
    }

    @Override // android.view.View
    @NotNull
    protected Parcelable onSaveInstanceState() {
        boolean z10;
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ProfilePictureView_superState", onSaveInstanceState);
        bundle.putString("ProfilePictureView_profileId", this.f16669h);
        bundle.putInt("ProfilePictureView_presetSize", this.f16671j);
        bundle.putBoolean("ProfilePictureView_isCropped", this.f16670i);
        bundle.putInt("ProfilePictureView_width", this.f16664c);
        bundle.putInt("ProfilePictureView_height", this.f16663b);
        if (this.f16666e != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        bundle.putBoolean("ProfilePictureView_refresh", z10);
        return bundle;
    }

    public final void setCropped(boolean z10) {
        this.f16670i = z10;
        i(false);
    }

    public final void setDefaultProfilePicture(@Nullable Bitmap bitmap) {
        this.f16667f = bitmap;
    }

    public final void setPresetSize(int i10) {
        if (i10 != -4 && i10 != -3 && i10 != -2 && i10 != -1) {
            throw new IllegalArgumentException("Must use a predefined preset size");
        }
        this.f16671j = i10;
        requestLayout();
    }

    public final void setProfileId(@Nullable String str) {
        String str2 = this.f16669h;
        boolean z10 = true;
        if (str2 != null && str2.length() != 0 && StringsKt.G(this.f16669h, str, true)) {
            z10 = false;
        } else {
            l();
        }
        this.f16669h = str;
        i(z10);
    }

    public final void setShouldUpdateOnProfileChange(boolean z10) {
        if (z10) {
            f0 f0Var = this.f16668g;
            if (f0Var != null) {
                f0Var.d();
                return;
            }
            return;
        }
        f0 f0Var2 = this.f16668g;
        if (f0Var2 != null) {
            f0Var2.e();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfilePictureView(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.f16662a = new ImageView(getContext());
        this.f16670i = true;
        this.f16671j = -1;
        e();
        g(attrs);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfilePictureView(@NotNull Context context, @NotNull AttributeSet attrs, int i10) {
        super(context, attrs, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.f16662a = new ImageView(getContext());
        this.f16670i = true;
        this.f16671j = -1;
        e();
        g(attrs);
    }

    public final void setOnErrorListener(@Nullable b bVar) {
    }
}
