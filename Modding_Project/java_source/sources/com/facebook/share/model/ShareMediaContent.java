package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ShareMediaContent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShareMediaContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareMediaContent.kt\ncom/facebook/share/model/ShareMediaContent\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,118:1\n11653#2,9:119\n13579#2:128\n13580#2:130\n11662#2:131\n1#3:129\n37#4,2:132\n*S KotlinDebug\n*F\n+ 1 ShareMediaContent.kt\ncom/facebook/share/model/ShareMediaContent\n*L\n24#1:119,9\n24#1:128\n24#1:130\n24#1:131\n24#1:129\n34#1:132,2\n*E\n"})
/* loaded from: classes3.dex */
public final class ShareMediaContent extends ShareContent<ShareMediaContent, Object> {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final List<ShareMedia<?, ?>> f16772g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final b f16771h = new b(null);
    @NotNull
    public static final Parcelable.Creator<ShareMediaContent> CREATOR = new a();

    /* compiled from: ShareMediaContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<ShareMediaContent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public ShareMediaContent createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new ShareMediaContent(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public ShareMediaContent[] newArray(int i10) {
            return new ShareMediaContent[i10];
        }
    }

    /* compiled from: ShareMediaContent.kt */
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
    public ShareMediaContent(@NotNull Parcel source) {
        super(source);
        List<ShareMedia<?, ?>> n10;
        Intrinsics.checkNotNullParameter(source, "source");
        Parcelable[] readParcelableArray = source.readParcelableArray(ShareMedia.class.getClassLoader());
        if (readParcelableArray != null) {
            n10 = new ArrayList<>();
            for (Parcelable parcelable : readParcelableArray) {
                ShareMedia<?, ?> shareMedia = (ShareMedia) parcelable;
                if (shareMedia != null) {
                    n10.add(shareMedia);
                }
            }
        } else {
            n10 = CollectionsKt.n();
        }
        this.f16772g = n10;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i10);
        out.writeParcelableArray((Parcelable[]) this.f16772g.toArray(new ShareMedia[0]), i10);
    }
}
