package com.google.android.exoplayer2.extractor.flv;

import b7.g0;
import com.google.android.exoplayer2.ParserException;
import t5.b0;
/* loaded from: classes4.dex */
abstract class TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    protected final b0 f17605a;

    /* loaded from: classes4.dex */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TagPayloadReader(b0 b0Var) {
        this.f17605a = b0Var;
    }

    public final boolean a(g0 g0Var, long j10) throws ParserException {
        if (b(g0Var) && c(g0Var, j10)) {
            return true;
        }
        return false;
    }

    protected abstract boolean b(g0 g0Var) throws ParserException;

    protected abstract boolean c(g0 g0Var, long j10) throws ParserException;
}
