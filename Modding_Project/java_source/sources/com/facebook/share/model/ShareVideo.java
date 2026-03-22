package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareVideo.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ShareVideo extends ShareMedia<ShareVideo, a> {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Uri f16799b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ShareMedia.Type f16800c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final c f16798d = new c(null);
    @NotNull
    public static final Parcelable.Creator<ShareVideo> CREATOR = new b();

    /* compiled from: ShareVideo.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a extends ShareMedia.a<ShareVideo, a> {
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Uri f16801c;

        @NotNull
        public ShareVideo d() {
            return new ShareVideo(this, null);
        }

        @Nullable
        public final Uri e() {
            return this.f16801c;
        }

        @NotNull
        public a f(@Nullable ShareVideo shareVideo) {
            if (shareVideo == null) {
                return this;
            }
            return h(shareVideo.b());
        }

        @NotNull
        public final a g(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return f((ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }

        @NotNull
        public final a h(@Nullable Uri uri) {
            this.f16801c = uri;
            return this;
        }
    }

    /* compiled from: ShareVideo.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Parcelable.Creator<ShareVideo> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public ShareVideo createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new ShareVideo(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public ShareVideo[] newArray(int i10) {
            return new ShareVideo[i10];
        }
    }

    /* compiled from: ShareVideo.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    public /* synthetic */ ShareVideo(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    @Nullable
    public final Uri b() {
        return this.f16799b;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i10);
        out.writeParcelable(this.f16799b, 0);
    }

    private ShareVideo(a aVar) {
        super(aVar);
        this.f16800c = ShareMedia.Type.VIDEO;
        this.f16799b = aVar.e();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareVideo(@NotNull Parcel parcel) {
        super(parcel);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16800c = ShareMedia.Type.VIDEO;
        this.f16799b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }
}
