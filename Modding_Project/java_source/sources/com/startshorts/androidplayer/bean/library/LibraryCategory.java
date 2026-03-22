package com.startshorts.androidplayer.bean.library;

import android.content.Context;
import com.startshorts.androidplayer.R$string;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryClass.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LibraryCategory {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long LIBRARY_CHANNEL_ALL = 3;
    public static final long LIBRARY_CHANNEL_FEMALE = 1;
    public static final long LIBRARY_CHANNEL_FREE = 2;
    public static final long LIBRARY_CHANNEL_MALE = 2;
    public static final long LIBRARY_CHANNEL_PAID = 1;

    /* renamed from: id  reason: collision with root package name */
    private final long f38116id;
    @Nullable
    private String name;

    /* compiled from: LibraryClass.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LibraryCategory createChannelAll(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new LibraryCategory(3L, context.getString(R$string.library_activity_label_all));
        }

        @NotNull
        public final LibraryCategory createClassAll(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new LibraryCategory(0L, context.getString(R$string.library_activity_label_all));
        }

        @NotNull
        public final LibraryCategory createExpenseChannelAll(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new LibraryCategory(3L, context.getString(R$string.library_activity_label_all));
        }

        private Companion() {
        }
    }

    public LibraryCategory(long j10, @Nullable String str) {
        this.f38116id = j10;
        this.name = str;
    }

    public static /* synthetic */ LibraryCategory copy$default(LibraryCategory libraryCategory, long j10, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = libraryCategory.f38116id;
        }
        if ((i10 & 2) != 0) {
            str = libraryCategory.name;
        }
        return libraryCategory.copy(j10, str);
    }

    public final long component1() {
        return this.f38116id;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final LibraryCategory copy(long j10, @Nullable String str) {
        return new LibraryCategory(j10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LibraryCategory)) {
            return false;
        }
        LibraryCategory libraryCategory = (LibraryCategory) obj;
        if (this.f38116id == libraryCategory.f38116id && Intrinsics.areEqual(this.name, libraryCategory.name)) {
            return true;
        }
        return false;
    }

    public final long getId() {
        return this.f38116id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Long.hashCode(this.f38116id) * 31;
        String str = this.name;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    @NotNull
    public String toString() {
        return "LibraryCategory(id=" + this.f38116id + ", name=" + this.name + ')';
    }
}
