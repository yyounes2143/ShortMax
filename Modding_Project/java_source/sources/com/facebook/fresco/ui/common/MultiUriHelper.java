package com.facebook.fresco.ui.common;

import android.net.Uri;
import k2.e;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MultiUriHelper.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMultiUriHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiUriHelper.kt\ncom/facebook/fresco/ui/common/MultiUriHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"})
/* loaded from: classes3.dex */
public final class MultiUriHelper {
    @NotNull
    public static final MultiUriHelper INSTANCE = new MultiUriHelper();

    private MultiUriHelper() {
    }

    @Nullable
    public static final <T> Uri getMainUri(@Nullable T t10, @Nullable T t11, @Nullable T[] tArr, @NotNull e<T, Uri> requestToUri) {
        Uri uri;
        Uri uri2;
        Intrinsics.checkNotNullParameter(requestToUri, "requestToUri");
        if (t10 != null) {
            uri = requestToUri.apply(t10);
        } else {
            uri = null;
        }
        if (uri != null) {
            return uri;
        }
        if (tArr != null && tArr.length != 0) {
            T t12 = tArr[0];
            if (t12 != null) {
                uri2 = requestToUri.apply(t12);
            } else {
                uri2 = null;
            }
            if (uri2 != null) {
                return uri2;
            }
        }
        if (t11 == null) {
            return null;
        }
        return requestToUri.apply(t11);
    }
}
