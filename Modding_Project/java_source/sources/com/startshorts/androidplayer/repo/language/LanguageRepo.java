package com.startshorts.androidplayer.repo.language;

import android.content.Context;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.startshorts.androidplayer.repo.language.LanguageRemoteDS;
import com.startshorts.androidplayer.repo.language.LanguageRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import yg.a;
/* compiled from: LanguageRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LanguageRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final LanguageRepo f44181a = new LanguageRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44182b = c.b(new Function0() { // from class: yg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a f10;
            f10 = LanguageRepo.f();
            return f10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44183c = c.b(new Function0() { // from class: yg.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            LanguageRemoteDS g10;
            g10 = LanguageRepo.g();
            return g10;
        }
    });

    private LanguageRepo() {
    }

    private final a d() {
        return (a) f44182b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LanguageRemoteDS e() {
        return (LanguageRemoteDS) f44183c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a f() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LanguageRemoteDS g() {
        return new LanguageRemoteDS();
    }

    @NotNull
    public final r h(@NotNull Function0<Unit> onFinish) {
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "notifyAppLanguageChanged", false, new LanguageRepo$notifyAppLanguageChanged$1(onFinish, null), 2, null);
    }

    @NotNull
    public final List<AppLanguage> i(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return d().a(context);
    }
}
