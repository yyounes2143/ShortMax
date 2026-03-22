package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.SharePhoto;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharePhotoContent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class SharePhotoContent extends ShareContent<SharePhotoContent, Object> {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final List<SharePhoto> f16792g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final b f16791h = new b(null);
    @NotNull
    public static final Parcelable.Creator<SharePhotoContent> CREATOR = new a();

    /* compiled from: SharePhotoContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<SharePhotoContent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public SharePhotoContent createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new SharePhotoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public SharePhotoContent[] newArray(int i10) {
            return new SharePhotoContent[i10];
        }
    }

    /* compiled from: SharePhotoContent.kt */
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
    public SharePhotoContent(@NotNull Parcel parcel) {
        super(parcel);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16792g = CollectionsKt.d1(SharePhoto.a.f16786g.a(parcel));
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i10);
        SharePhoto.a.f16786g.b(out, i10, this.f16792g);
    }
}
