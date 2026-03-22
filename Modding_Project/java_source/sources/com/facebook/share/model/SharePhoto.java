package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SharePhoto.kt */
@Metadata
/* loaded from: classes3.dex */
public final class SharePhoto extends ShareMedia<SharePhoto, a> {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f16781b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Uri f16782c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f16783d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f16784e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final ShareMedia.Type f16785f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final c f16780g = new c(null);
    @NotNull
    public static final Parcelable.Creator<SharePhoto> CREATOR = new b();

    /* compiled from: SharePhoto.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a extends ShareMedia.a<SharePhoto, a> {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        public static final C0274a f16786g = new C0274a(null);
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Bitmap f16787c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Uri f16788d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f16789e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private String f16790f;

        /* compiled from: SharePhoto.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nSharePhoto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharePhoto.kt\ncom/facebook/share/model/SharePhoto$Builder$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n37#2,2:192\n800#3,11:194\n*S KotlinDebug\n*F\n+ 1 SharePhoto.kt\ncom/facebook/share/model/SharePhoto$Builder$Companion\n*L\n162#1:192,2\n172#1:194,11\n*E\n"})
        /* renamed from: com.facebook.share.model.SharePhoto$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0274a {
            public /* synthetic */ C0274a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final List<SharePhoto> a(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                ArrayList arrayList = new ArrayList();
                for (Object obj : ShareMedia.a.f16769b.a(parcel)) {
                    if (obj instanceof SharePhoto) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            }

            public final void b(@NotNull Parcel out, int i10, @NotNull List<SharePhoto> photos) {
                Intrinsics.checkNotNullParameter(out, "out");
                Intrinsics.checkNotNullParameter(photos, "photos");
                out.writeParcelableArray((SharePhoto[]) photos.toArray(new SharePhoto[0]), i10);
            }

            private C0274a() {
            }
        }

        @NotNull
        public SharePhoto d() {
            return new SharePhoto(this, null);
        }

        @Nullable
        public final Bitmap e() {
            return this.f16787c;
        }

        @Nullable
        public final String f() {
            return this.f16790f;
        }

        @Nullable
        public final Uri g() {
            return this.f16788d;
        }

        public final boolean h() {
            return this.f16789e;
        }

        @NotNull
        public a i(@Nullable SharePhoto sharePhoto) {
            if (sharePhoto == null) {
                return this;
            }
            return ((a) super.b(sharePhoto)).k(sharePhoto.b()).m(sharePhoto.d()).n(sharePhoto.e()).l(sharePhoto.c());
        }

        @NotNull
        public final a j(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return i((SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader()));
        }

        @NotNull
        public final a k(@Nullable Bitmap bitmap) {
            this.f16787c = bitmap;
            return this;
        }

        @NotNull
        public final a l(@Nullable String str) {
            this.f16790f = str;
            return this;
        }

        @NotNull
        public final a m(@Nullable Uri uri) {
            this.f16788d = uri;
            return this;
        }

        @NotNull
        public final a n(boolean z10) {
            this.f16789e = z10;
            return this;
        }
    }

    /* compiled from: SharePhoto.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Parcelable.Creator<SharePhoto> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public SharePhoto createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new SharePhoto(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public SharePhoto[] newArray(int i10) {
            return new SharePhoto[i10];
        }
    }

    /* compiled from: SharePhoto.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    public /* synthetic */ SharePhoto(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    @Nullable
    public final Bitmap b() {
        return this.f16781b;
    }

    @Nullable
    public final String c() {
        return this.f16784e;
    }

    @Nullable
    public final Uri d() {
        return this.f16782c;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean e() {
        return this.f16783d;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i10);
        out.writeParcelable(this.f16781b, 0);
        out.writeParcelable(this.f16782c, 0);
        out.writeByte(this.f16783d ? (byte) 1 : (byte) 0);
        out.writeString(this.f16784e);
    }

    private SharePhoto(a aVar) {
        super(aVar);
        this.f16785f = ShareMedia.Type.PHOTO;
        this.f16781b = aVar.e();
        this.f16782c = aVar.g();
        this.f16783d = aVar.h();
        this.f16784e = aVar.f();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharePhoto(@NotNull Parcel parcel) {
        super(parcel);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16785f = ShareMedia.Type.PHOTO;
        this.f16781b = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.f16782c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f16783d = parcel.readByte() != 0;
        this.f16784e = parcel.readString();
    }
}
