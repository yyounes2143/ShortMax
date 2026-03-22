package com.moloco.sdk.internal.publisher.nativead.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f32830a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final List<AbstractC0482a> f32831b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final c f32832c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final List<String> f32833d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final List<b> f32834e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f32835f;

    @StabilityInferred(parameters = 1)
    /* renamed from: com.moloco.sdk.internal.publisher.nativead.model.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC0482a {

        /* renamed from: a  reason: collision with root package name */
        public final int f32836a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f32837b;

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.internal.publisher.nativead.model.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0483a extends AbstractC0482a {
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            public final Integer f32838c;
            @Nullable

            /* renamed from: d  reason: collision with root package name */
            public final Integer f32839d;
            @NotNull

            /* renamed from: e  reason: collision with root package name */
            public final String f32840e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0483a(int i10, boolean z10, @Nullable Integer num, @Nullable Integer num2, @NotNull String value) {
                super(i10, z10, null);
                Intrinsics.checkNotNullParameter(value, "value");
                this.f32838c = num;
                this.f32839d = num2;
                this.f32840e = value;
            }

            @NotNull
            public final String c() {
                return this.f32840e;
            }
        }

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.internal.publisher.nativead.model.a$a$b */
        /* loaded from: classes6.dex */
        public static final class b extends AbstractC0482a {
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            public final Integer f32841c;
            @NotNull

            /* renamed from: d  reason: collision with root package name */
            public final String f32842d;
            @Nullable

            /* renamed from: e  reason: collision with root package name */
            public final Integer f32843e;
            @Nullable

            /* renamed from: f  reason: collision with root package name */
            public final Integer f32844f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(int i10, boolean z10, @Nullable Integer num, @NotNull String url, @Nullable Integer num2, @Nullable Integer num3) {
                super(i10, z10, null);
                Intrinsics.checkNotNullParameter(url, "url");
                this.f32841c = num;
                this.f32842d = url;
                this.f32843e = num2;
                this.f32844f = num3;
            }

            @NotNull
            public final String c() {
                return this.f32842d;
            }
        }

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.internal.publisher.nativead.model.a$a$c */
        /* loaded from: classes6.dex */
        public static final class c extends AbstractC0482a {
            @NotNull

            /* renamed from: c  reason: collision with root package name */
            public final String f32845c;
            @Nullable

            /* renamed from: d  reason: collision with root package name */
            public final Integer f32846d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(int i10, boolean z10, @NotNull String text, @Nullable Integer num) {
                super(i10, z10, null);
                Intrinsics.checkNotNullParameter(text, "text");
                this.f32845c = text;
                this.f32846d = num;
            }

            @NotNull
            public final String c() {
                return this.f32845c;
            }
        }

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.internal.publisher.nativead.model.a$a$d */
        /* loaded from: classes6.dex */
        public static final class d extends AbstractC0482a {
            @NotNull

            /* renamed from: c  reason: collision with root package name */
            public final String f32847c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(int i10, boolean z10, @NotNull String vastTag) {
                super(i10, z10, null);
                Intrinsics.checkNotNullParameter(vastTag, "vastTag");
                this.f32847c = vastTag;
            }

            @NotNull
            public final String c() {
                return this.f32847c;
            }
        }

        public /* synthetic */ AbstractC0482a(int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
            this(i10, z10);
        }

        public final int a() {
            return this.f32836a;
        }

        public final boolean b() {
            return this.f32837b;
        }

        public AbstractC0482a(int i10, boolean z10) {
            this.f32836a = i10;
            this.f32837b = z10;
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f32848a;

        /* renamed from: b  reason: collision with root package name */
        public final int f32849b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f32850c;

        public b(int i10, int i11, @Nullable String str) {
            this.f32848a = i10;
            this.f32849b = i11;
            this.f32850c = str;
        }

        public final int a() {
            return this.f32848a;
        }

        public final int b() {
            return this.f32849b;
        }

        @Nullable
        public final String c() {
            return this.f32850c;
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final String f32851a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final List<String> f32852b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f32853c;

        public c(@NotNull String url, @NotNull List<String> clickTrackerUrls, @Nullable String str) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(clickTrackerUrls, "clickTrackerUrls");
            this.f32851a = url;
            this.f32852b = clickTrackerUrls;
            this.f32853c = str;
        }

        @NotNull
        public final List<String> a() {
            return this.f32852b;
        }

        @NotNull
        public final String b() {
            return this.f32851a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(@Nullable String str, @NotNull List<? extends AbstractC0482a> assets, @Nullable c cVar, @NotNull List<String> impressionTrackerUrls, @NotNull List<b> eventTrackers, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(assets, "assets");
        Intrinsics.checkNotNullParameter(impressionTrackerUrls, "impressionTrackerUrls");
        Intrinsics.checkNotNullParameter(eventTrackers, "eventTrackers");
        this.f32830a = str;
        this.f32831b = assets;
        this.f32832c = cVar;
        this.f32833d = impressionTrackerUrls;
        this.f32834e = eventTrackers;
        this.f32835f = str2;
    }

    @NotNull
    public final List<AbstractC0482a> a() {
        return this.f32831b;
    }

    @NotNull
    public final List<b> b() {
        return this.f32834e;
    }

    @NotNull
    public final List<String> c() {
        return this.f32833d;
    }

    @Nullable
    public final c d() {
        return this.f32832c;
    }
}
