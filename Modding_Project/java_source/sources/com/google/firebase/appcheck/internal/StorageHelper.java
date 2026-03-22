package com.google.firebase.appcheck.internal;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import w7.t;
/* loaded from: classes5.dex */
public class StorageHelper {

    /* renamed from: b  reason: collision with root package name */
    private static final r7.b f20349b = new r7.b(StorageHelper.class.getSimpleName());

    /* renamed from: a  reason: collision with root package name */
    private t<SharedPreferences> f20350a;

    @VisibleForTesting
    /* loaded from: classes5.dex */
    enum TokenType {
        DEFAULT_APP_CHECK_TOKEN,
        UNKNOWN_APP_CHECK_TOKEN
    }

    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f20351a;

        static {
            int[] iArr = new int[TokenType.values().length];
            f20351a = iArr;
            try {
                iArr[TokenType.DEFAULT_APP_CHECK_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20351a[TokenType.UNKNOWN_APP_CHECK_TOKEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public StorageHelper(@NonNull final Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotEmpty(str);
        final String format = String.format("com.google.firebase.appcheck.store.%s", str);
        this.f20350a = new t<>(new w8.b() { // from class: q7.m
            @Override // w8.b
            public final Object get() {
                Object sharedPreferences;
                sharedPreferences = context.getSharedPreferences(format, 0);
                return sharedPreferences;
            }
        });
    }

    void b() {
        this.f20350a.get().edit().remove("com.google.firebase.appcheck.APP_CHECK_TOKEN").remove("com.google.firebase.appcheck.TOKEN_TYPE").apply();
    }

    @Nullable
    public p7.c d() {
        String string = this.f20350a.get().getString("com.google.firebase.appcheck.TOKEN_TYPE", null);
        String string2 = this.f20350a.get().getString("com.google.firebase.appcheck.APP_CHECK_TOKEN", null);
        if (string != null && string2 != null) {
            try {
                int i10 = a.f20351a[TokenType.valueOf(string).ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        f20349b.d("Reached unreachable section in #retrieveAppCheckToken()");
                        return null;
                    }
                    return com.google.firebase.appcheck.internal.a.d(string2);
                }
                return com.google.firebase.appcheck.internal.a.e(string2);
            } catch (IllegalArgumentException e10) {
                r7.b bVar = f20349b;
                bVar.d("Failed to parse TokenType of stored token  with type [" + string + "] with exception: " + e10.getMessage());
                b();
            }
        }
        return null;
    }

    public void e(@NonNull p7.c cVar) {
        if (cVar instanceof com.google.firebase.appcheck.internal.a) {
            this.f20350a.get().edit().putString("com.google.firebase.appcheck.APP_CHECK_TOKEN", ((com.google.firebase.appcheck.internal.a) cVar).i()).putString("com.google.firebase.appcheck.TOKEN_TYPE", TokenType.DEFAULT_APP_CHECK_TOKEN.name()).apply();
        } else {
            this.f20350a.get().edit().putString("com.google.firebase.appcheck.APP_CHECK_TOKEN", cVar.b()).putString("com.google.firebase.appcheck.TOKEN_TYPE", TokenType.UNKNOWN_APP_CHECK_TOKEN.name()).apply();
        }
    }
}
