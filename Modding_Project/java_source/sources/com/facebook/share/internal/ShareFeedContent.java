package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareFeedContent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ShareFeedContent extends ShareContent<ShareFeedContent, Object> {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String f16726g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final String f16727h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final String f16728i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final String f16729j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final String f16730k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final String f16731l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final String f16732m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final b f16725n = new b(null);
    @NotNull
    public static final Parcelable.Creator<ShareFeedContent> CREATOR = new a();

    /* compiled from: ShareFeedContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<ShareFeedContent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public ShareFeedContent createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ShareFeedContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public ShareFeedContent[] newArray(int i10) {
            return new ShareFeedContent[i10];
        }
    }

    /* compiled from: ShareFeedContent.kt */
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
    public ShareFeedContent(@NotNull Parcel parcel) {
        super(parcel);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16726g = parcel.readString();
        this.f16727h = parcel.readString();
        this.f16728i = parcel.readString();
        this.f16729j = parcel.readString();
        this.f16730k = parcel.readString();
        this.f16731l = parcel.readString();
        this.f16732m = parcel.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i10);
        out.writeString(this.f16726g);
        out.writeString(this.f16727h);
        out.writeString(this.f16728i);
        out.writeString(this.f16729j);
        out.writeString(this.f16730k);
        out.writeString(this.f16731l);
        out.writeString(this.f16732m);
    }
}
