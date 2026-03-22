package com.facebook;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.Pair;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookContentProvider.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFacebookContentProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookContentProvider.kt\ncom/facebook/FacebookContentProvider\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,121:1\n37#2,2:122\n*S KotlinDebug\n*F\n+ 1 FacebookContentProvider.kt\ncom/facebook/FacebookContentProvider\n*L\n87#1:122,2\n*E\n"})
/* loaded from: classes3.dex */
public final class FacebookContentProvider extends ContentProvider {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f14812a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f14813b = FacebookContentProvider.class.getName();

    /* compiled from: FacebookContentProvider.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final Pair<UUID, String> a(Uri uri) {
        try {
            String path = uri.getPath();
            if (path != null) {
                Intrinsics.checkNotNullExpressionValue(path, "checkNotNull(uri.path)");
                String substring = path.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                String[] strArr = (String[]) StringsKt.split$default(substring, new String[]{DomExceptionUtils.SEPARATOR}, false, 0, 6, null).toArray(new String[0]);
                String str = strArr[0];
                String str2 = strArr[1];
                if (!"..".contentEquals(str) && !"..".contentEquals(str2)) {
                    return new Pair<>(UUID.fromString(str), str2);
                }
                throw new Exception();
            }
            throw new IllegalStateException("Required value was null.");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(@NotNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NotNull Uri uri, @Nullable ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public ParcelFileDescriptor openFile(@NotNull Uri uri, @NotNull String mode) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Pair<UUID, String> a10 = a(uri);
        if (a10 != null) {
            try {
                File c10 = com.facebook.internal.j0.c((UUID) a10.first, (String) a10.second);
                if (c10 != null) {
                    return ParcelFileDescriptor.open(c10, 268435456);
                }
                throw new FileNotFoundException();
            } catch (FileNotFoundException e10) {
                String str = f14813b;
                Log.e(str, "Got unexpected exception:" + e10);
                throw e10;
            }
        }
        throw new FileNotFoundException();
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NotNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NotNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }
}
