package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareLinkContent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ShareLinkContent extends ShareContent<ShareLinkContent, Object> {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String f16767g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final b f16766h = new b(null);
    @NotNull
    public static final Parcelable.Creator<ShareLinkContent> CREATOR = new a();

    /* compiled from: ShareLinkContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<ShareLinkContent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public ShareLinkContent createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new ShareLinkContent(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public ShareLinkContent[] newArray(int i10) {
            return new ShareLinkContent[i10];
        }
    }

    /* compiled from: ShareLinkContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareLinkContent(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.f16767g = source.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i10);
        out.writeString(this.f16767g);
    }
}
