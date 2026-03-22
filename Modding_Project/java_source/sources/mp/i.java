package mp;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.ImageData;
import io.bidmachine.LabelData;
import io.bidmachine.PrivacySheetData;
import io.bidmachine.nativead.view.NativeAdOverlayContainer;
import io.bidmachine.nativead.view.NativeMediaView;
import java.util.Set;
/* compiled from: NativeNetworkAdapter.java */
/* loaded from: classes8.dex */
public class i implements e {

    /* renamed from: a  reason: collision with root package name */
    private String f62608a;

    /* renamed from: b  reason: collision with root package name */
    private String f62609b;

    /* renamed from: c  reason: collision with root package name */
    private String f62610c;

    /* renamed from: e  reason: collision with root package name */
    private ImageData f62612e;

    /* renamed from: f  reason: collision with root package name */
    private ImageData f62613f;

    /* renamed from: g  reason: collision with root package name */
    private String f62614g;

    /* renamed from: h  reason: collision with root package name */
    private String f62615h;

    /* renamed from: i  reason: collision with root package name */
    private String f62616i;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private LabelData f62618k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private PrivacySheetData f62619l;

    /* renamed from: d  reason: collision with root package name */
    private float f62611d = -1.0f;

    /* renamed from: j  reason: collision with root package name */
    private boolean f62617j = true;

    public i A(String str) {
        this.f62615h = str;
        return this;
    }

    @Override // mp.e
    @Nullable
    public PrivacySheetData a() {
        return this.f62619l;
    }

    @Nullable
    public View b(@NonNull Context context) {
        return null;
    }

    @Nullable
    public View c(@NonNull Context context) {
        if (this.f62618k == null && this.f62619l == null) {
            return null;
        }
        NativeAdOverlayContainer nativeAdOverlayContainer = new NativeAdOverlayContainer(context);
        nativeAdOverlayContainer.b(this);
        nativeAdOverlayContainer.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return nativeAdOverlayContainer;
    }

    public String e() {
        return this.f62610c;
    }

    @Nullable
    public String f() {
        return this.f62614g;
    }

    @Override // mp.e
    @Nullable
    public String g() {
        return this.f62615h;
    }

    @Override // mp.j
    @Nullable
    public ImageData getIcon() {
        return this.f62612e;
    }

    @Override // mp.j
    @Nullable
    public ImageData getMainImage() {
        return this.f62613f;
    }

    public String h() {
        return this.f62609b;
    }

    @Override // mp.j
    public boolean hasVideo() {
        throw null;
    }

    public float i() {
        return this.f62611d;
    }

    public String j() {
        return this.f62608a;
    }

    public boolean k() {
        return this.f62617j;
    }

    public boolean l() {
        if (!TextUtils.isEmpty(j()) && !TextUtils.isEmpty(h()) && !TextUtils.isEmpty(e())) {
            return true;
        }
        return false;
    }

    @Override // mp.e
    @Nullable
    public LabelData m() {
        return this.f62618k;
    }

    @Override // mp.e
    @Nullable
    public String o() {
        return this.f62616i;
    }

    @NonNull
    public i p(@Nullable LabelData labelData) {
        this.f62618k = labelData;
        return this;
    }

    public i q(String str) {
        this.f62610c = str;
        return this;
    }

    public i r(String str) {
        this.f62614g = str;
        return this;
    }

    public i s(String str) {
        this.f62609b = str;
        return this;
    }

    public i t(ImageData imageData) {
        this.f62612e = imageData;
        return this;
    }

    public i u(ImageData imageData) {
        this.f62613f = imageData;
        return this;
    }

    public i v(boolean z10) {
        this.f62617j = z10;
        return this;
    }

    @NonNull
    public i w(@Nullable PrivacySheetData privacySheetData) {
        this.f62619l = privacySheetData;
        return this;
    }

    public i x(float f10) {
        this.f62611d = f10;
        return this;
    }

    public i y(String str) {
        this.f62608a = str;
        return this;
    }

    public i z(String str) {
        this.f62616i = str;
        return this;
    }

    public void B() {
    }

    public void d() {
    }

    public void n(@NonNull ViewGroup viewGroup, @Nullable ImageView imageView, @Nullable NativeMediaView nativeMediaView, @Nullable Set<View> set) {
    }
}
