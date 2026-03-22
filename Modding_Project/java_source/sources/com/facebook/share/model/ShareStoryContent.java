package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareStoryContent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ShareStoryContent extends ShareContent<ShareStoryContent, Object> {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final ShareMedia<?, ?> f16794g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final SharePhoto f16795h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final List<String> f16796i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final String f16797j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final b f16793k = new b(null);
    @NotNull
    public static final Parcelable.Creator<ShareStoryContent> CREATOR = new a();

    /* compiled from: ShareStoryContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<ShareStoryContent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public ShareStoryContent createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ShareStoryContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public ShareStoryContent[] newArray(int i10) {
            return new ShareStoryContent[i10];
        }
    }

    /* compiled from: ShareStoryContent.kt */
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
    public ShareStoryContent(@NotNull Parcel parcel) {
        super(parcel);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16794g = (ShareMedia) parcel.readParcelable(ShareMedia.class.getClassLoader());
        this.f16795h = (SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader());
        this.f16796i = a(parcel);
        this.f16797j = parcel.readString();
    }

    private final List<String> a(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return CollectionsKt.d1(arrayList);
    }

    @Nullable
    public final List<String> b() {
        List<String> list = this.f16796i;
        if (list != null) {
            return CollectionsKt.d1(list);
        }
        return null;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i10);
        out.writeParcelable(this.f16794g, 0);
        out.writeParcelable(this.f16795h, 0);
        out.writeStringList(b());
        out.writeString(this.f16797j);
    }
}
