package com.startshorts.androidplayer.ui.view.guide.model;

import android.view.View;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HighlightOptions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private View.OnClickListener f47283a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private kj.a f47284b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f47285c;

    /* compiled from: HighlightOptions.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final b f47286a = new b();

        @NotNull
        public final b a() {
            return this.f47286a;
        }

        @NotNull
        public final a b(@Nullable View.OnClickListener onClickListener) {
            this.f47286a.c(onClickListener);
            return this;
        }

        @NotNull
        public final a c(@Nullable kj.a aVar) {
            this.f47286a.d(aVar);
            return this;
        }
    }

    public final boolean a() {
        return this.f47285c;
    }

    @Nullable
    public final kj.a b() {
        return this.f47284b;
    }

    public final void c(@Nullable View.OnClickListener onClickListener) {
        this.f47283a = onClickListener;
    }

    public final void d(@Nullable kj.a aVar) {
        this.f47284b = aVar;
    }
}
