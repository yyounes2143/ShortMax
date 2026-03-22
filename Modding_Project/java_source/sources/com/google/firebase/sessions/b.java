package com.google.firebase.sessions;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.datastore.DataStoreFile;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.MultiProcessDataStoreFactory;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import com.google.firebase.sessions.SessionDataSerializer;
import com.google.firebase.sessions.b;
import com.google.firebase.sessions.settings.SessionConfigsSerializer;
import gt.g0;
import j9.c0;
import j9.k0;
import j9.m0;
import j9.n0;
import j9.o0;
import j9.p0;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FirebaseSessionsComponent.kt */
@Metadata
/* loaded from: classes5.dex */
public interface b {

    /* compiled from: FirebaseSessionsComponent.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public interface a {
        @NotNull
        a a(@NotNull x8.e eVar);

        @NotNull
        a b(@NotNull com.google.firebase.f fVar);

        @NotNull
        b build();

        @NotNull
        a c(@NotNull Context context);

        @NotNull
        a d(@o7.a @NotNull CoroutineContext coroutineContext);

        @NotNull
        a e(@NotNull w8.b<a5.i> bVar);

        @NotNull
        a f(@o7.b @NotNull CoroutineContext coroutineContext);
    }

    /* compiled from: FirebaseSessionsComponent.kt */
    @Metadata
    /* renamed from: com.google.firebase.sessions.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0313b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f21604a = a.f21605a;

        /* compiled from: FirebaseSessionsComponent.kt */
        @Metadata
        /* renamed from: com.google.firebase.sessions.b$b$a */
        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ a f21605a = new a();

            private a() {
            }

            private final <T> DataStore<T> f(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list, g0 g0Var, Function0<? extends File> function0) {
                if (h()) {
                    return MultiProcessDataStoreFactory.INSTANCE.create(serializer, replaceFileCorruptionHandler, list, g0Var, function0);
                }
                return DataStoreFactory.INSTANCE.create(serializer, replaceFileCorruptionHandler, list, g0Var, function0);
            }

            static /* synthetic */ DataStore g(a aVar, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, g0 g0Var, Function0 function0, int i10, Object obj) {
                if ((i10 & 4) != 0) {
                    list = CollectionsKt.n();
                }
                return aVar.f(serializer, replaceFileCorruptionHandler, list, g0Var, function0);
            }

            private final boolean h() {
                try {
                    System.loadLibrary("datastore_shared_counter");
                    return true;
                } catch (SecurityException | UnsatisfiedLinkError unused) {
                    return false;
                }
            }

            private final void i(File file) {
                Path path;
                File parentFile = file.getParentFile();
                if (parentFile == null) {
                    return;
                }
                if (parentFile.exists() && !parentFile.isDirectory() && Intrinsics.areEqual(parentFile.getName(), "firebaseSessions") && !parentFile.delete()) {
                    throw new IOException("Failed to delete conflicting file: " + parentFile);
                } else if (parentFile.isDirectory()) {
                } else {
                    if (Build.VERSION.SDK_INT >= 26) {
                        try {
                            path = parentFile.toPath();
                            Files.createDirectories(path, new FileAttribute[0]);
                        } catch (Exception e10) {
                            throw new IOException("Failed to create directory: " + parentFile, e10);
                        }
                    } else if (!parentFile.mkdirs() && !parentFile.isDirectory()) {
                        throw new IOException("Failed to create directory: " + parentFile);
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final com.google.firebase.sessions.settings.a k(CorruptionException ex) {
                Intrinsics.checkNotNullParameter(ex, "ex");
                Log.w("FirebaseSessions", "CorruptionException in session configs DataStore", ex);
                return SessionConfigsSerializer.f21658a.getDefaultValue();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File l(Context context) {
                File dataStoreFile = DataStoreFile.dataStoreFile(context, "firebaseSessions/sessionConfigsDataStore.data");
                f21605a.i(dataStoreFile);
                return dataStoreFile;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final i n(SessionDataSerializer sessionDataSerializer, CorruptionException ex) {
                Intrinsics.checkNotNullParameter(ex, "ex");
                Log.w("FirebaseSessions", "CorruptionException in session data DataStore", ex);
                return sessionDataSerializer.getDefaultValue();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File o(Context context) {
                File dataStoreFile = DataStoreFile.dataStoreFile(context, "firebaseSessions/sessionDataStore.data");
                f21605a.i(dataStoreFile);
                return dataStoreFile;
            }

            @NotNull
            public final j9.b e(@NotNull com.google.firebase.f firebaseApp) {
                Intrinsics.checkNotNullParameter(firebaseApp, "firebaseApp");
                return c0.f60289a.b(firebaseApp);
            }

            @NotNull
            public final DataStore<com.google.firebase.sessions.settings.a> j(@NotNull final Context appContext, @o7.b @NotNull CoroutineContext blockingDispatcher) {
                Intrinsics.checkNotNullParameter(appContext, "appContext");
                Intrinsics.checkNotNullParameter(blockingDispatcher, "blockingDispatcher");
                return g(this, SessionConfigsSerializer.f21658a, new ReplaceFileCorruptionHandler(new Function1() { // from class: j9.l
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        com.google.firebase.sessions.settings.a k10;
                        k10 = b.InterfaceC0313b.a.k((CorruptionException) obj);
                        return k10;
                    }
                }), null, kotlinx.coroutines.i.a(blockingDispatcher), new Function0() { // from class: j9.m
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        File l10;
                        l10 = b.InterfaceC0313b.a.l(appContext);
                        return l10;
                    }
                }, 4, null);
            }

            @NotNull
            public final DataStore<i> m(@NotNull final Context appContext, @o7.b @NotNull CoroutineContext blockingDispatcher, @NotNull final SessionDataSerializer sessionDataSerializer) {
                Intrinsics.checkNotNullParameter(appContext, "appContext");
                Intrinsics.checkNotNullParameter(blockingDispatcher, "blockingDispatcher");
                Intrinsics.checkNotNullParameter(sessionDataSerializer, "sessionDataSerializer");
                return g(this, sessionDataSerializer, new ReplaceFileCorruptionHandler(new Function1() { // from class: j9.n
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        com.google.firebase.sessions.i n10;
                        n10 = b.InterfaceC0313b.a.n(SessionDataSerializer.this, (CorruptionException) obj);
                        return n10;
                    }
                }), null, kotlinx.coroutines.i.a(blockingDispatcher), new Function0() { // from class: j9.o
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        File o10;
                        o10 = b.InterfaceC0313b.a.o(appContext);
                        return o10;
                    }
                }, 4, null);
            }

            @NotNull
            public final m0 p() {
                return n0.f60329a;
            }

            @NotNull
            public final o0 q() {
                return p0.f60331a;
            }
        }
    }

    @NotNull
    FirebaseSessions a();

    @NotNull
    k0 b();
}
