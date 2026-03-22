package com.google.firebase.sessions.settings;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SettingsCache.kt */
@Metadata
@d(c = "com.google.firebase.sessions.settings.SettingsCacheImpl", f = "SettingsCache.kt", l = {98}, m = "updateConfigs")
/* loaded from: classes5.dex */
public final class SettingsCacheImpl$updateConfigs$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f21676h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SettingsCacheImpl f21677i;

    /* renamed from: j  reason: collision with root package name */
    int f21678j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsCacheImpl$updateConfigs$1(SettingsCacheImpl settingsCacheImpl, c<? super SettingsCacheImpl$updateConfigs$1> cVar) {
        super(cVar);
        this.f21677i = settingsCacheImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21676h = obj;
        this.f21678j |= Integer.MIN_VALUE;
        return this.f21677i.a(null, this);
    }
}
