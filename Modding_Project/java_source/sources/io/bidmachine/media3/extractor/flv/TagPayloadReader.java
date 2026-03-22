package io.bidmachine.media3.extractor.flv;

import ao.o0;
import cn.b0;
import io.bidmachine.media3.common.ParserException;
/* loaded from: classes8.dex */
abstract class TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    protected final o0 f57434a;

    /* loaded from: classes8.dex */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TagPayloadReader(o0 o0Var) {
        this.f57434a = o0Var;
    }

    public final boolean a(b0 b0Var, long j10) throws ParserException {
        if (b(b0Var) && c(b0Var, j10)) {
            return true;
        }
        return false;
    }

    protected abstract boolean b(b0 b0Var) throws ParserException;

    protected abstract boolean c(b0 b0Var, long j10) throws ParserException;
}
