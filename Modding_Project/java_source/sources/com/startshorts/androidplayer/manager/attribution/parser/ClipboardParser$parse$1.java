package com.startshorts.androidplayer.manager.attribution.parser;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ClipboardParser.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser", f = "ClipboardParser.kt", l = {46, 47}, m = "parse")
/* loaded from: classes6.dex */
public final class ClipboardParser$parse$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41934h;

    /* renamed from: i  reason: collision with root package name */
    boolean f41935i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f41936j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ClipboardParser f41937k;

    /* renamed from: l  reason: collision with root package name */
    int f41938l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClipboardParser$parse$1(ClipboardParser clipboardParser, c<? super ClipboardParser$parse$1> cVar) {
        super(cVar);
        this.f41937k = clipboardParser;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41936j = obj;
        this.f41938l |= Integer.MIN_VALUE;
        return this.f41937k.c(false, this);
    }
}
