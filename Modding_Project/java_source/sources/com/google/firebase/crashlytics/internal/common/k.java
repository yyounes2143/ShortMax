package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
/* compiled from: CrashlyticsAppQualitySessionsStore.java */
/* loaded from: classes5.dex */
class k {

    /* renamed from: d  reason: collision with root package name */
    private static final FilenameFilter f20741d = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.i
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean d10;
            d10 = k.d(file, str);
            return d10;
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private static final Comparator<File> f20742e = new Comparator() { // from class: com.google.firebase.crashlytics.internal.common.j
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int e10;
            e10 = k.e((File) obj, (File) obj2);
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final h8.g f20743a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f20744b = null;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f20745c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(h8.g gVar) {
        this.f20743a = gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(File file, String str) {
        return str.startsWith("aqs.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int e(File file, File file2) {
        return Long.compare(file2.lastModified(), file.lastModified());
    }

    private static void f(h8.g gVar, @Nullable String str, @Nullable String str2) {
        if (str != null && str2 != null) {
            try {
                gVar.q(str, "aqs." + str2).createNewFile();
            } catch (IOException e10) {
                z7.g.f().l("Failed to persist App Quality Sessions session id.", e10);
            }
        }
    }

    @Nullable
    @VisibleForTesting
    static String g(h8.g gVar, @NonNull String str) {
        List<File> r10 = gVar.r(str, f20741d);
        if (r10.isEmpty()) {
            z7.g.f().k("Unable to read App Quality Sessions session id.");
            return null;
        }
        return ((File) Collections.min(r10, f20742e)).getName().substring(4);
    }

    @Nullable
    public synchronized String c(@NonNull String str) {
        if (Objects.equals(this.f20744b, str)) {
            return this.f20745c;
        }
        return g(this.f20743a, str);
    }

    public synchronized void h(@NonNull String str) {
        if (!Objects.equals(this.f20745c, str)) {
            f(this.f20743a, this.f20744b, str);
            this.f20745c = str;
        }
    }

    public synchronized void i(@Nullable String str) {
        if (!Objects.equals(this.f20744b, str)) {
            f(this.f20743a, str, this.f20745c);
            this.f20744b = str;
        }
    }
}
