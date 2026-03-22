package com.airbnb.lottie;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;
/* loaded from: classes2.dex */
public class LottieAnimationView extends AppCompatImageView {

    /* renamed from: n  reason: collision with root package name */
    private static final String f4418n = "LottieAnimationView";

    /* renamed from: o  reason: collision with root package name */
    private static final n0<Throwable> f4419o = new n0() { // from class: com.airbnb.lottie.f
        @Override // com.airbnb.lottie.n0
        public final void onResult(Object obj) {
            LottieAnimationView.w((Throwable) obj);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final n0<i> f4420a;

    /* renamed from: b  reason: collision with root package name */
    private final n0<Throwable> f4421b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private n0<Throwable> f4422c;
    @DrawableRes

    /* renamed from: d  reason: collision with root package name */
    private int f4423d;

    /* renamed from: e  reason: collision with root package name */
    private final LottieDrawable f4424e;

    /* renamed from: f  reason: collision with root package name */
    private String f4425f;
    @RawRes

    /* renamed from: g  reason: collision with root package name */
    private int f4426g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f4427h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f4428i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f4429j;

    /* renamed from: k  reason: collision with root package name */
    private final Set<UserActionTaken> f4430k;

    /* renamed from: l  reason: collision with root package name */
    private final Set<p0> f4431l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private t0<i> f4432m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        String f4433a;

        /* renamed from: b  reason: collision with root package name */
        int f4434b;

        /* renamed from: c  reason: collision with root package name */
        float f4435c;

        /* renamed from: d  reason: collision with root package name */
        boolean f4436d;

        /* renamed from: e  reason: collision with root package name */
        String f4437e;

        /* renamed from: f  reason: collision with root package name */
        int f4438f;

        /* renamed from: g  reason: collision with root package name */
        int f4439g;

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, h hVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f4433a);
            parcel.writeFloat(this.f4435c);
            parcel.writeInt(this.f4436d ? 1 : 0);
            parcel.writeString(this.f4437e);
            parcel.writeInt(this.f4438f);
            parcel.writeInt(this.f4439g);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f4433a = parcel.readString();
            this.f4435c = parcel.readFloat();
            this.f4436d = parcel.readInt() == 1;
            this.f4437e = parcel.readString();
            this.f4438f = parcel.readInt();
            this.f4439g = parcel.readInt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum UserActionTaken {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    /* loaded from: classes2.dex */
    private static class a implements n0<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<LottieAnimationView> f4440a;

        public a(LottieAnimationView lottieAnimationView) {
            this.f4440a = new WeakReference<>(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.n0
        /* renamed from: a */
        public void onResult(Throwable th2) {
            LottieAnimationView lottieAnimationView = this.f4440a.get();
            if (lottieAnimationView == null) {
                return;
            }
            if (lottieAnimationView.f4423d != 0) {
                lottieAnimationView.setImageResource(lottieAnimationView.f4423d);
            }
            (lottieAnimationView.f4422c == null ? LottieAnimationView.f4419o : lottieAnimationView.f4422c).onResult(th2);
        }
    }

    /* loaded from: classes2.dex */
    private static class b implements n0<i> {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<LottieAnimationView> f4441a;

        public b(LottieAnimationView lottieAnimationView) {
            this.f4441a = new WeakReference<>(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.n0
        /* renamed from: a */
        public void onResult(i iVar) {
            LottieAnimationView lottieAnimationView = this.f4441a.get();
            if (lottieAnimationView == null) {
                return;
            }
            lottieAnimationView.setComposition(iVar);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.f4420a = new b(this);
        this.f4421b = new a(this);
        this.f4423d = 0;
        this.f4424e = new LottieDrawable();
        this.f4427h = false;
        this.f4428i = false;
        this.f4429j = true;
        this.f4430k = new HashSet();
        this.f4431l = new HashSet();
        s(null, w0.f4790a);
    }

    private void A() {
        boolean t10 = t();
        setImageDrawable(null);
        setImageDrawable(this.f4424e);
        if (t10) {
            this.f4424e.H0();
        }
    }

    private void B(@FloatRange(from = 0.0d, to = 1.0d) float f10, boolean z10) {
        if (z10) {
            this.f4430k.add(UserActionTaken.SET_PROGRESS);
        }
        this.f4424e.j1(f10);
    }

    private void n() {
        t0<i> t0Var = this.f4432m;
        if (t0Var != null) {
            t0Var.k(this.f4420a);
            this.f4432m.j(this.f4421b);
        }
    }

    private void o() {
        this.f4424e.w();
    }

    private t0<i> q(final String str) {
        if (isInEditMode()) {
            return new t0<>(new Callable() { // from class: com.airbnb.lottie.e
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    r0 u10;
                    u10 = LottieAnimationView.this.u(str);
                    return u10;
                }
            }, true);
        }
        if (this.f4429j) {
            return s.l(getContext(), str);
        }
        return s.m(getContext(), str, null);
    }

    private t0<i> r(@RawRes final int i10) {
        if (isInEditMode()) {
            return new t0<>(new Callable() { // from class: com.airbnb.lottie.g
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    r0 v10;
                    v10 = LottieAnimationView.this.v(i10);
                    return v10;
                }
            }, true);
        }
        if (this.f4429j) {
            return s.x(getContext(), i10);
        }
        return s.y(getContext(), i10, null);
    }

    private void s(@Nullable AttributeSet attributeSet, @AttrRes int i10) {
        String string;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, x0.f4793a, i10, 0);
        this.f4429j = obtainStyledAttributes.getBoolean(x0.f4798f, true);
        boolean hasValue = obtainStyledAttributes.hasValue(x0.f4810r);
        boolean hasValue2 = obtainStyledAttributes.hasValue(x0.f4805m);
        boolean hasValue3 = obtainStyledAttributes.hasValue(x0.f4815w);
        if (hasValue && hasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (hasValue) {
            int resourceId = obtainStyledAttributes.getResourceId(x0.f4810r, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (hasValue2) {
            String string2 = obtainStyledAttributes.getString(x0.f4805m);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (hasValue3 && (string = obtainStyledAttributes.getString(x0.f4815w)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(obtainStyledAttributes.getResourceId(x0.f4804l, 0));
        if (obtainStyledAttributes.getBoolean(x0.f4797e, false)) {
            this.f4428i = true;
        }
        if (obtainStyledAttributes.getBoolean(x0.f4808p, false)) {
            this.f4424e.l1(-1);
        }
        if (obtainStyledAttributes.hasValue(x0.f4813u)) {
            setRepeatMode(obtainStyledAttributes.getInt(x0.f4813u, 1));
        }
        if (obtainStyledAttributes.hasValue(x0.f4812t)) {
            setRepeatCount(obtainStyledAttributes.getInt(x0.f4812t, -1));
        }
        if (obtainStyledAttributes.hasValue(x0.f4814v)) {
            setSpeed(obtainStyledAttributes.getFloat(x0.f4814v, 1.0f));
        }
        if (obtainStyledAttributes.hasValue(x0.f4800h)) {
            setClipToCompositionBounds(obtainStyledAttributes.getBoolean(x0.f4800h, true));
        }
        if (obtainStyledAttributes.hasValue(x0.f4799g)) {
            setClipTextToBoundingBox(obtainStyledAttributes.getBoolean(x0.f4799g, false));
        }
        if (obtainStyledAttributes.hasValue(x0.f4802j)) {
            setDefaultFontFileExtension(obtainStyledAttributes.getString(x0.f4802j));
        }
        setImageAssetsFolder(obtainStyledAttributes.getString(x0.f4807o));
        B(obtainStyledAttributes.getFloat(x0.f4809q, 0.0f), obtainStyledAttributes.hasValue(x0.f4809q));
        p(obtainStyledAttributes.getBoolean(x0.f4803k, false));
        setApplyingOpacityToLayersEnabled(obtainStyledAttributes.getBoolean(x0.f4794b, false));
        setApplyingShadowToLayersEnabled(obtainStyledAttributes.getBoolean(x0.f4795c, true));
        if (obtainStyledAttributes.hasValue(x0.f4801i)) {
            l(new x0.d("**"), q0.N, new e1.c(new y0(AppCompatResources.getColorStateList(getContext(), obtainStyledAttributes.getResourceId(x0.f4801i, -1)).getDefaultColor())));
        }
        if (obtainStyledAttributes.hasValue(x0.f4811s)) {
            int i11 = x0.f4811s;
            RenderMode renderMode = RenderMode.AUTOMATIC;
            int i12 = obtainStyledAttributes.getInt(i11, renderMode.ordinal());
            if (i12 >= RenderMode.values().length) {
                i12 = renderMode.ordinal();
            }
            setRenderMode(RenderMode.values()[i12]);
        }
        if (obtainStyledAttributes.hasValue(x0.f4796d)) {
            int i13 = x0.f4796d;
            AsyncUpdates asyncUpdates = AsyncUpdates.AUTOMATIC;
            int i14 = obtainStyledAttributes.getInt(i13, asyncUpdates.ordinal());
            if (i14 >= RenderMode.values().length) {
                i14 = asyncUpdates.ordinal();
            }
            setAsyncUpdates(AsyncUpdates.values()[i14]);
        }
        setIgnoreDisabledSystemAnimations(obtainStyledAttributes.getBoolean(x0.f4806n, false));
        if (obtainStyledAttributes.hasValue(x0.f4816x)) {
            setUseCompositionFrameRate(obtainStyledAttributes.getBoolean(x0.f4816x, false));
        }
        obtainStyledAttributes.recycle();
    }

    private void setCompositionTask(t0<i> t0Var) {
        r0<i> e10 = t0Var.e();
        LottieDrawable lottieDrawable = this.f4424e;
        if (e10 != null && lottieDrawable == getDrawable() && lottieDrawable.K() == e10.b()) {
            return;
        }
        this.f4430k.add(UserActionTaken.SET_ANIMATION);
        o();
        n();
        this.f4432m = t0Var.d(this.f4420a).c(this.f4421b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ r0 u(String str) throws Exception {
        if (this.f4429j) {
            return s.n(getContext(), str);
        }
        return s.o(getContext(), str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ r0 v(int i10) throws Exception {
        if (this.f4429j) {
            return s.z(getContext(), i10);
        }
        return s.A(getContext(), i10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w(Throwable th2) {
        if (d1.p.k(th2)) {
            d1.f.d("Unable to load composition.", th2);
            return;
        }
        throw new IllegalStateException("Unable to parse composition", th2);
    }

    public AsyncUpdates getAsyncUpdates() {
        return this.f4424e.F();
    }

    public boolean getAsyncUpdatesEnabled() {
        return this.f4424e.G();
    }

    public boolean getClipTextToBoundingBox() {
        return this.f4424e.I();
    }

    public boolean getClipToCompositionBounds() {
        return this.f4424e.J();
    }

    @Nullable
    public i getComposition() {
        Drawable drawable = getDrawable();
        LottieDrawable lottieDrawable = this.f4424e;
        if (drawable == lottieDrawable) {
            return lottieDrawable.K();
        }
        return null;
    }

    public long getDuration() {
        i composition = getComposition();
        if (composition != null) {
            return composition.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f4424e.N();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.f4424e.P();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.f4424e.R();
    }

    public float getMaxFrame() {
        return this.f4424e.T();
    }

    public float getMinFrame() {
        return this.f4424e.U();
    }

    @Nullable
    public v0 getPerformanceTracker() {
        return this.f4424e.V();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.f4424e.W();
    }

    public RenderMode getRenderMode() {
        return this.f4424e.X();
    }

    public int getRepeatCount() {
        return this.f4424e.Y();
    }

    public int getRepeatMode() {
        return this.f4424e.Z();
    }

    public float getSpeed() {
        return this.f4424e.a0();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof LottieDrawable) && ((LottieDrawable) drawable).X() == RenderMode.SOFTWARE) {
            this.f4424e.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        LottieDrawable lottieDrawable = this.f4424e;
        if (drawable2 == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public <T> void l(x0.d dVar, T t10, e1.c<T> cVar) {
        this.f4424e.s(dVar, t10, cVar);
    }

    @MainThread
    public void m() {
        this.f4428i = false;
        this.f4430k.add(UserActionTaken.PLAY_OPTION);
        this.f4424e.v();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && this.f4428i) {
            this.f4424e.E0();
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f4425f = savedState.f4433a;
        Set<UserActionTaken> set = this.f4430k;
        UserActionTaken userActionTaken = UserActionTaken.SET_ANIMATION;
        if (!set.contains(userActionTaken) && !TextUtils.isEmpty(this.f4425f)) {
            setAnimation(this.f4425f);
        }
        this.f4426g = savedState.f4434b;
        if (!this.f4430k.contains(userActionTaken) && (i10 = this.f4426g) != 0) {
            setAnimation(i10);
        }
        if (!this.f4430k.contains(UserActionTaken.SET_PROGRESS)) {
            B(savedState.f4435c, false);
        }
        if (!this.f4430k.contains(UserActionTaken.PLAY_OPTION) && savedState.f4436d) {
            y();
        }
        if (!this.f4430k.contains(UserActionTaken.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(savedState.f4437e);
        }
        if (!this.f4430k.contains(UserActionTaken.SET_REPEAT_MODE)) {
            setRepeatMode(savedState.f4438f);
        }
        if (!this.f4430k.contains(UserActionTaken.SET_REPEAT_COUNT)) {
            setRepeatCount(savedState.f4439g);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4433a = this.f4425f;
        savedState.f4434b = this.f4426g;
        savedState.f4435c = this.f4424e.W();
        savedState.f4436d = this.f4424e.f0();
        savedState.f4437e = this.f4424e.P();
        savedState.f4438f = this.f4424e.Z();
        savedState.f4439g = this.f4424e.Y();
        return savedState;
    }

    public void p(boolean z10) {
        this.f4424e.B(LottieFeatureFlag.MergePathsApi19, z10);
    }

    public void setAnimation(@RawRes int i10) {
        this.f4426g = i10;
        this.f4425f = null;
        setCompositionTask(r(i10));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f4429j ? s.B(getContext(), str) : s.C(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f4424e.J0(z10);
    }

    public void setApplyingShadowToLayersEnabled(boolean z10) {
        this.f4424e.K0(z10);
    }

    public void setAsyncUpdates(AsyncUpdates asyncUpdates) {
        this.f4424e.L0(asyncUpdates);
    }

    public void setCacheComposition(boolean z10) {
        this.f4429j = z10;
    }

    public void setClipTextToBoundingBox(boolean z10) {
        this.f4424e.M0(z10);
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.f4424e.N0(z10);
    }

    public void setComposition(@NonNull i iVar) {
        if (d.f4474a) {
            String str = f4418n;
            Log.v(str, "Set Composition \n" + iVar);
        }
        this.f4424e.setCallback(this);
        this.f4427h = true;
        boolean O0 = this.f4424e.O0(iVar);
        if (this.f4428i) {
            this.f4424e.E0();
        }
        this.f4427h = false;
        if (getDrawable() == this.f4424e && !O0) {
            return;
        }
        if (!O0) {
            A();
        }
        onVisibilityChanged(this, getVisibility());
        requestLayout();
        for (p0 p0Var : this.f4431l) {
            p0Var.a(iVar);
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.f4424e.P0(str);
    }

    public void setFailureListener(@Nullable n0<Throwable> n0Var) {
        this.f4422c = n0Var;
    }

    public void setFallbackResource(@DrawableRes int i10) {
        this.f4423d = i10;
    }

    public void setFontAssetDelegate(com.airbnb.lottie.a aVar) {
        this.f4424e.Q0(aVar);
    }

    public void setFontMap(@Nullable Map<String, Typeface> map) {
        this.f4424e.R0(map);
    }

    public void setFrame(int i10) {
        this.f4424e.S0(i10);
    }

    @Deprecated
    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f4424e.T0(z10);
    }

    public void setImageAssetDelegate(com.airbnb.lottie.b bVar) {
        this.f4424e.U0(bVar);
    }

    public void setImageAssetsFolder(String str) {
        this.f4424e.V0(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f4426g = 0;
        this.f4425f = null;
        n();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f4426g = 0;
        this.f4425f = null;
        n();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        this.f4426g = 0;
        this.f4425f = null;
        n();
        super.setImageResource(i10);
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.f4424e.W0(z10);
    }

    public void setMaxFrame(int i10) {
        this.f4424e.X0(i10);
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f4424e.Z0(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.f4424e.b1(str);
    }

    public void setMinAndMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11) {
        this.f4424e.d1(f10, f11);
    }

    public void setMinFrame(int i10) {
        this.f4424e.e1(i10);
    }

    public void setMinProgress(float f10) {
        this.f4424e.g1(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.f4424e.h1(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.f4424e.i1(z10);
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        B(f10, true);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.f4424e.k1(renderMode);
    }

    public void setRepeatCount(int i10) {
        this.f4430k.add(UserActionTaken.SET_REPEAT_COUNT);
        this.f4424e.l1(i10);
    }

    public void setRepeatMode(int i10) {
        this.f4430k.add(UserActionTaken.SET_REPEAT_MODE);
        this.f4424e.m1(i10);
    }

    public void setSafeMode(boolean z10) {
        this.f4424e.n1(z10);
    }

    public void setSpeed(float f10) {
        this.f4424e.o1(f10);
    }

    public void setTextDelegate(z0 z0Var) {
        this.f4424e.p1(z0Var);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.f4424e.q1(z10);
    }

    public boolean t() {
        return this.f4424e.e0();
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        LottieDrawable lottieDrawable;
        if (!this.f4427h && drawable == (lottieDrawable = this.f4424e) && lottieDrawable.e0()) {
            x();
        } else if (!this.f4427h && (drawable instanceof LottieDrawable)) {
            LottieDrawable lottieDrawable2 = (LottieDrawable) drawable;
            if (lottieDrawable2.e0()) {
                lottieDrawable2.D0();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    @MainThread
    public void x() {
        this.f4428i = false;
        this.f4424e.D0();
    }

    @MainThread
    public void y() {
        this.f4430k.add(UserActionTaken.PLAY_OPTION);
        this.f4424e.E0();
    }

    @MainThread
    public void z() {
        this.f4430k.add(UserActionTaken.PLAY_OPTION);
        this.f4424e.H0();
    }

    public void setAnimationFromJson(String str, @Nullable String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setMaxFrame(String str) {
        this.f4424e.Y0(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z10) {
        this.f4424e.c1(str, str2, z10);
    }

    public void setMinFrame(String str) {
        this.f4424e.f1(str);
    }

    public void setMinAndMaxFrame(int i10, int i11) {
        this.f4424e.a1(i10, i11);
    }

    public void setAnimation(String str) {
        this.f4425f = str;
        this.f4426g = 0;
        setCompositionTask(q(str));
    }

    public void setAnimationFromUrl(String str, @Nullable String str2) {
        setCompositionTask(s.C(getContext(), str, str2));
    }

    public void setAnimation(InputStream inputStream, @Nullable String str) {
        setCompositionTask(s.q(inputStream, str));
    }

    public void setAnimation(ZipInputStream zipInputStream, @Nullable String str) {
        setCompositionTask(s.E(zipInputStream, str));
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4420a = new b(this);
        this.f4421b = new a(this);
        this.f4423d = 0;
        this.f4424e = new LottieDrawable();
        this.f4427h = false;
        this.f4428i = false;
        this.f4429j = true;
        this.f4430k = new HashSet();
        this.f4431l = new HashSet();
        s(attributeSet, w0.f4790a);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f4420a = new b(this);
        this.f4421b = new a(this);
        this.f4423d = 0;
        this.f4424e = new LottieDrawable();
        this.f4427h = false;
        this.f4428i = false;
        this.f4429j = true;
        this.f4430k = new HashSet();
        this.f4431l = new HashSet();
        s(attributeSet, i10);
    }
}
