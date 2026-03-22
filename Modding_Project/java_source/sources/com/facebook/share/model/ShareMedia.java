package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMedia.a;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareMedia.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public abstract class ShareMedia<M extends ShareMedia<M, B>, B extends a<M, B>> implements ShareModel {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f16768a;

    /* compiled from: ShareMedia.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum Type {
        PHOTO,
        VIDEO
    }

    /* compiled from: ShareMedia.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static abstract class a<M extends ShareMedia<M, B>, B extends a<M, B>> {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final C0273a f16769b = new C0273a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private Bundle f16770a = new Bundle();

        /* compiled from: ShareMedia.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nShareMedia.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareMedia.kt\ncom/facebook/share/model/ShareMedia$Builder$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,82:1\n37#2,2:83\n4098#3,11:85\n*S KotlinDebug\n*F\n+ 1 ShareMedia.kt\ncom/facebook/share/model/ShareMedia$Builder$Companion\n*L\n70#1:83,2\n77#1:85,11\n*E\n"})
        /* renamed from: com.facebook.share.model.ShareMedia$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0273a {
            public /* synthetic */ C0273a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final List<ShareMedia<?, ?>> a(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                Parcelable[] readParcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
                if (readParcelableArray == null) {
                    return CollectionsKt.n();
                }
                ArrayList arrayList = new ArrayList();
                for (Parcelable parcelable : readParcelableArray) {
                    if (parcelable instanceof ShareMedia) {
                        arrayList.add(parcelable);
                    }
                }
                return arrayList;
            }

            private C0273a() {
            }
        }

        @NotNull
        public final Bundle a() {
            return this.f16770a;
        }

        @NotNull
        public B b(@Nullable M m10) {
            if (m10 == null) {
                Intrinsics.checkNotNull(this, "null cannot be cast to non-null type B of com.facebook.share.model.ShareMedia.Builder");
                return this;
            }
            return c(((ShareMedia) m10).f16768a);
        }

        @c
        @NotNull
        public final B c(@NotNull Bundle parameters) {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            this.f16770a.putAll(parameters);
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type B of com.facebook.share.model.ShareMedia.Builder");
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareMedia(@NotNull a<M, B> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f16768a = new Bundle(builder.a());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeBundle(this.f16768a);
    }

    public ShareMedia(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        Bundle readBundle = parcel.readBundle(getClass().getClassLoader());
        this.f16768a = readBundle == null ? new Bundle() : readBundle;
    }
}
