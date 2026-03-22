package io.bidmachine.rendering.model;

import android.graphics.Bitmap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class PrivacySheetParams {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58551a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f58552b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<a> f58553c;

    @Metadata
    /* loaded from: classes8.dex */
    public enum ActionType {
        REDIRECT,
        COPY_TO_CLIPBOARD
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ActionType f58555a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f58556b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f58557c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Bitmap f58558d;

        public a(@NotNull ActionType type, @NotNull String title, @NotNull String data) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(data, "data");
            this.f58555a = type;
            this.f58556b = title;
            this.f58557c = data;
        }

        @NotNull
        public final String a() {
            return this.f58557c;
        }

        @Nullable
        public final Bitmap b() {
            return this.f58558d;
        }

        @NotNull
        public final String c() {
            return this.f58556b;
        }

        @NotNull
        public final ActionType d() {
            return this.f58555a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f58555a == aVar.f58555a && Intrinsics.areEqual(this.f58556b, aVar.f58556b) && Intrinsics.areEqual(this.f58557c, aVar.f58557c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f58555a.hashCode() * 31) + this.f58556b.hashCode()) * 31) + this.f58557c.hashCode();
        }

        @NotNull
        public String toString() {
            return "Action(type=" + this.f58555a + ", title=" + this.f58556b + ", data=" + this.f58557c + ')';
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(@NotNull ActionType type, @NotNull String title, @NotNull String data, @Nullable Bitmap bitmap) {
            this(type, title, data);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(data, "data");
            this.f58558d = bitmap;
        }
    }

    public PrivacySheetParams(@NotNull String title, @NotNull String subtitle, @NotNull List<a> actions) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        Intrinsics.checkNotNullParameter(actions, "actions");
        this.f58551a = title;
        this.f58552b = subtitle;
        this.f58553c = actions;
    }

    @NotNull
    public final List<a> a() {
        return this.f58553c;
    }

    @NotNull
    public final String b() {
        return this.f58552b;
    }

    @NotNull
    public final String c() {
        return this.f58551a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivacySheetParams)) {
            return false;
        }
        PrivacySheetParams privacySheetParams = (PrivacySheetParams) obj;
        if (Intrinsics.areEqual(this.f58551a, privacySheetParams.f58551a) && Intrinsics.areEqual(this.f58552b, privacySheetParams.f58552b) && Intrinsics.areEqual(this.f58553c, privacySheetParams.f58553c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f58551a.hashCode() * 31) + this.f58552b.hashCode()) * 31) + this.f58553c.hashCode();
    }

    @NotNull
    public String toString() {
        return "PrivacySheetParams(title=" + this.f58551a + ", subtitle=" + this.f58552b + ", actions=" + this.f58553c + ')';
    }
}
