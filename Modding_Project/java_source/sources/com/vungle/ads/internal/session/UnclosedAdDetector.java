package com.vungle.ads.internal.session;

import android.content.Context;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.executor.FutureResult;
import com.vungle.ads.internal.model.UnclosedAd;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.s;
import org.jetbrains.annotations.NotNull;
import st.t;
/* compiled from: UnclosedAdDetector.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UnclosedAdDetector {
    @NotNull
    private static final String FILENAME = "unclosed_ad";
    @NotNull
    private final Context context;
    @NotNull
    private final Executors executors;
    @NotNull
    private File file;
    @NotNull
    private final PathProvider pathProvider;
    private boolean ready;
    @NotNull
    private final String sessionId;
    @NotNull
    private final CopyOnWriteArrayList<UnclosedAd> unclosedAdList;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final kotlinx.serialization.json.a json = s.b(null, new Function1<kotlinx.serialization.json.c, Unit>() { // from class: com.vungle.ads.internal.session.UnclosedAdDetector$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(kotlinx.serialization.json.c cVar) {
            invoke2(cVar);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull kotlinx.serialization.json.c Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
            Json.c(true);
        }
    }, 1, null);

    /* compiled from: UnclosedAdDetector.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public UnclosedAdDetector(@NotNull Context context, @NotNull String sessionId, @NotNull Executors executors, @NotNull PathProvider pathProvider) {
        Object d10;
        boolean j10;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(executors, "executors");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.context = context;
        this.sessionId = sessionId;
        this.executors = executors;
        this.pathProvider = pathProvider;
        this.file = pathProvider.getUnclosedAdFile(FILENAME);
        this.unclosedAdList = new CopyOnWriteArrayList<>();
        if (!this.file.exists()) {
            try {
                Result.a aVar = Result.f60901b;
                d10 = Result.d(Boolean.valueOf(this.file.createNewFile()));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(f.a(th2));
            }
            Throwable g10 = Result.g(d10);
            if (g10 != null) {
                Logger.Companion companion = Logger.Companion;
                companion.e("UnclosedAdDetector", "Fail to create unclosed ad file: " + g10.getMessage());
            }
            j10 = Result.j(d10);
        } else {
            j10 = true;
        }
        this.ready = j10;
    }

    private final /* synthetic */ <T> T decodeJson(String str) {
        kotlinx.serialization.json.a aVar = json;
        xt.a serializersModule = aVar.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        KSerializer<Object> c10 = t.c(serializersModule, null);
        Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return (T) aVar.b(c10, str);
    }

    private final List<UnclosedAd> readUnclosedAdFromFile() {
        if (!this.ready) {
            return CollectionsKt.n();
        }
        return (List) new FutureResult(this.executors.getIoExecutor().submit(new Callable() { // from class: com.vungle.ads.internal.session.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List m4828readUnclosedAdFromFile$lambda4;
                m4828readUnclosedAdFromFile$lambda4 = UnclosedAdDetector.m4828readUnclosedAdFromFile$lambda4(UnclosedAdDetector.this);
                return m4828readUnclosedAdFromFile$lambda4;
            }
        })).get(1000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: readUnclosedAdFromFile$lambda-4  reason: not valid java name */
    public static final List m4828readUnclosedAdFromFile$lambda4(UnclosedAdDetector this$0) {
        List arrayList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            String readString = FileUtility.INSTANCE.readString(this$0.file);
            if (readString != null && readString.length() != 0) {
                kotlinx.serialization.json.a aVar = json;
                KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(List.class, KTypeProjection.Companion.invariant(Reflection.typeOf(UnclosedAd.class))));
                Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                arrayList = (List) aVar.b(c10, readString);
                return arrayList;
            }
            arrayList = new ArrayList();
            return arrayList;
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e("UnclosedAdDetector", "Fail to read unclosed ad file " + e10.getMessage());
            return new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: retrieveUnclosedAd$lambda-3  reason: not valid java name */
    public static final void m4829retrieveUnclosedAd$lambda3(UnclosedAdDetector this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            FileUtility.deleteAndLogIfFailed(this$0.file);
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e("UnclosedAdDetector", "Fail to delete file " + e10.getMessage());
        }
    }

    private final void writeUnclosedAdToFile(List<UnclosedAd> list) {
        if (!this.ready) {
            return;
        }
        try {
            kotlinx.serialization.json.a aVar = json;
            KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(List.class, KTypeProjection.Companion.invariant(Reflection.typeOf(UnclosedAd.class))));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            final String a10 = aVar.a(c10, list);
            this.executors.getIoExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.session.c
                @Override // java.lang.Runnable
                public final void run() {
                    UnclosedAdDetector.m4830writeUnclosedAdToFile$lambda5(UnclosedAdDetector.this, a10);
                }
            });
        } catch (Throwable th2) {
            Logger.Companion companion = Logger.Companion;
            companion.e("UnclosedAdDetector", "Fail to write unclosed ad file " + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: writeUnclosedAdToFile$lambda-5  reason: not valid java name */
    public static final void m4830writeUnclosedAdToFile$lambda5(UnclosedAdDetector this$0, String jsonContent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(jsonContent, "$jsonContent");
        FileUtility.INSTANCE.writeString(this$0.file, jsonContent);
    }

    public final void addUnclosedAd(@NotNull UnclosedAd ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        if (!this.ready) {
            return;
        }
        ad2.setSessionId(this.sessionId);
        this.unclosedAdList.add(ad2);
        writeUnclosedAdToFile(this.unclosedAdList);
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final Executors getExecutors() {
        return this.executors;
    }

    @NotNull
    public final PathProvider getPathProvider() {
        return this.pathProvider;
    }

    public final void removeUnclosedAd(@NotNull UnclosedAd ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        if (this.ready && this.unclosedAdList.contains(ad2)) {
            this.unclosedAdList.remove(ad2);
            writeUnclosedAdToFile(this.unclosedAdList);
        }
    }

    @NotNull
    public final List<UnclosedAd> retrieveUnclosedAd() {
        ArrayList arrayList = new ArrayList();
        if (!this.ready) {
            return arrayList;
        }
        List<UnclosedAd> readUnclosedAdFromFile = readUnclosedAdFromFile();
        if (readUnclosedAdFromFile != null) {
            arrayList.addAll(readUnclosedAdFromFile);
        }
        this.executors.getIoExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.session.b
            @Override // java.lang.Runnable
            public final void run() {
                UnclosedAdDetector.m4829retrieveUnclosedAd$lambda3(UnclosedAdDetector.this);
            }
        });
        return arrayList;
    }
}
