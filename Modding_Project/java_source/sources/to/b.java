package to;

import ao.q;
import io.bidmachine.media3.common.ParserException;
import java.io.IOException;
/* compiled from: EbmlProcessor.java */
/* loaded from: classes8.dex */
public interface b {
    void a(int i10, int i11, q qVar) throws IOException;

    void endMasterElement(int i10) throws ParserException;

    void floatElement(int i10, double d10) throws ParserException;

    int getElementType(int i10);

    void integerElement(int i10, long j10) throws ParserException;

    boolean isLevel1Element(int i10);

    void startMasterElement(int i10, long j10, long j11) throws ParserException;

    void stringElement(int i10, String str) throws ParserException;
}
