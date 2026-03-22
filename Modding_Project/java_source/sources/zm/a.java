package zm;

import android.view.View;
import androidx.annotation.Nullable;
/* compiled from: AdOverlayInfo.java */
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final View f71725a;

    /* renamed from: b  reason: collision with root package name */
    public final int f71726b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f71727c;

    /* compiled from: AdOverlayInfo.java */
    /* renamed from: zm.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0988a {

        /* renamed from: a  reason: collision with root package name */
        private final View f71728a;

        /* renamed from: b  reason: collision with root package name */
        private final int f71729b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f71730c;

        public C0988a(View view, int i10) {
            this.f71728a = view;
            this.f71729b = i10;
        }

        public a a() {
            return new a(this.f71728a, this.f71729b, this.f71730c);
        }

        public C0988a b(@Nullable String str) {
            this.f71730c = str;
            return this;
        }
    }

    @Deprecated
    public a(View view, int i10, @Nullable String str) {
        this.f71725a = view;
        this.f71726b = i10;
        this.f71727c = str;
    }
}
