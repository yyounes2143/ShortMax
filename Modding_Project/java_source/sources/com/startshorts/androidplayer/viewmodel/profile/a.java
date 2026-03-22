package com.startshorts.androidplayer.viewmodel.profile;

import android.content.Context;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LanguageViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: LanguageViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.profile.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0673a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f48976a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0673a(@NotNull Context context) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f48976a = context;
        }

        @NotNull
        public final Context a() {
            return this.f48976a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0673a) && Intrinsics.areEqual(this.f48976a, ((C0673a) obj).f48976a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48976a.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadAppLanguages(context=" + this.f48976a + ')';
        }
    }

    /* compiled from: LanguageViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final AppLanguage f48977a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull AppLanguage language) {
            super(null);
            Intrinsics.checkNotNullParameter(language, "language");
            this.f48977a = language;
        }

        @NotNull
        public final AppLanguage a() {
            return this.f48977a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f48977a, ((b) obj).f48977a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48977a.hashCode();
        }

        @NotNull
        public String toString() {
            return "UpdateAppLanguage(language=" + this.f48977a + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
