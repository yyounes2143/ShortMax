package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Regex.kt */
@Metadata
/* loaded from: classes8.dex */
public /* synthetic */ class Regex$findAll$2 extends FunctionReferenceImpl implements Function1<MatchResult, MatchResult> {

    /* renamed from: a  reason: collision with root package name */
    public static final Regex$findAll$2 f61172a = new Regex$findAll$2();

    Regex$findAll$2() {
        super(1, MatchResult.class, "next", "next()Lkotlin/text/MatchResult;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    /* renamed from: b */
    public final MatchResult invoke(MatchResult p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        return p02.next();
    }
}
