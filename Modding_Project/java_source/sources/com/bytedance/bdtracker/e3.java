package com.bytedance.bdtracker;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.oneid.IDBindCallback;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes3.dex */
public final class e3 {

    /* renamed from: a  reason: collision with root package name */
    public final d f11987a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f11988b;

    /* renamed from: c  reason: collision with root package name */
    public final IAppLogLogger f11989c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final e0 f11990d;

    /* loaded from: classes3.dex */
    public static final class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Map f11992b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ IDBindCallback f11993c;

        public a(Map map, IDBindCallback iDBindCallback) {
            this.f11992b = map;
            this.f11993c = iDBindCallback;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00f9  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 350
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.e3.a.run():void");
        }
    }

    public e3(@NotNull e0 engine) {
        Intrinsics.checkParameterIsNotNull(engine, "engine");
        this.f11990d = engine;
        this.f11987a = engine.f11955d;
        this.f11988b = new Handler(Looper.getMainLooper());
        d dVar = engine.f11955d;
        Intrinsics.checkExpressionValueIsNotNull(dVar, "engine.appLog");
        this.f11989c = dVar.D;
    }

    public final void a(@NotNull Map<String, String> identities, @Nullable IDBindCallback iDBindCallback) {
        Intrinsics.checkParameterIsNotNull(identities, "identities");
        x.f12504a.submit(new a(identities, iDBindCallback));
    }
}
