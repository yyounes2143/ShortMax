package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.ContactsContract;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LocalContentUriFetchProducer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class h0 extends k0 {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f15782d = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f15783e = {"_id", "_data"};
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f15784c;

    /* compiled from: LocalContentUriFetchProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(@NotNull Executor executor, @NotNull n2.g pooledByteBufferFactory, @NotNull ContentResolver contentResolver) {
        super(executor, pooledByteBufferFactory);
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(pooledByteBufferFactory, "pooledByteBufferFactory");
        Intrinsics.checkNotNullParameter(contentResolver, "contentResolver");
        this.f15784c = contentResolver;
    }

    private final y3.k g(Uri uri) throws IOException {
        try {
            ParcelFileDescriptor openFileDescriptor = this.f15784c.openFileDescriptor(uri, "r");
            if (openFileDescriptor != null) {
                y3.k e10 = e(new FileInputStream(openFileDescriptor.getFileDescriptor()), (int) openFileDescriptor.getStatSize());
                Intrinsics.checkNotNullExpressionValue(e10, "getEncodedImage(...)");
                openFileDescriptor.close();
                return e10;
            }
            throw new IllegalStateException("Required value was null.");
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    @Override // com.facebook.imagepipeline.producers.k0
    @Nullable
    protected y3.k d(@NotNull ImageRequest imageRequest) throws IOException {
        y3.k g10;
        InputStream createInputStream;
        Intrinsics.checkNotNullParameter(imageRequest, "imageRequest");
        Uri w10 = imageRequest.w();
        Intrinsics.checkNotNullExpressionValue(w10, "getSourceUri(...)");
        if (r2.d.k(w10)) {
            String uri = w10.toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            if (StringsKt.F(uri, "/photo", false, 2, null)) {
                createInputStream = this.f15784c.openInputStream(w10);
            } else {
                String uri2 = w10.toString();
                Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
                if (StringsKt.F(uri2, "/display_photo", false, 2, null)) {
                    try {
                        AssetFileDescriptor openAssetFileDescriptor = this.f15784c.openAssetFileDescriptor(w10, "r");
                        if (openAssetFileDescriptor != null) {
                            createInputStream = openAssetFileDescriptor.createInputStream();
                        } else {
                            throw new IllegalStateException("Required value was null.");
                        }
                    } catch (IOException unused) {
                        throw new IOException("Contact photo does not exist: " + w10);
                    }
                } else {
                    InputStream openContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.f15784c, w10);
                    if (openContactPhotoInputStream != null) {
                        createInputStream = openContactPhotoInputStream;
                    } else {
                        throw new IOException("Contact photo does not exist: " + w10);
                    }
                }
            }
            if (createInputStream != null) {
                return e(createInputStream, -1);
            }
            throw new IllegalStateException("Required value was null.");
        } else if (r2.d.j(w10) && (g10 = g(w10)) != null) {
            return g10;
        } else {
            InputStream openInputStream = this.f15784c.openInputStream(w10);
            if (openInputStream != null) {
                return e(openInputStream, -1);
            }
            throw new IllegalStateException("Required value was null.");
        }
    }

    @Override // com.facebook.imagepipeline.producers.k0
    @NotNull
    protected String f() {
        return "LocalContentUriFetchProducer";
    }
}
