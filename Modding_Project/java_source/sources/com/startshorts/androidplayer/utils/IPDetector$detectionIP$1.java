package com.startshorts.androidplayer.utils;

import android.text.TextUtils;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountLocalDS;
import fk.e0;
import gt.g0;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
import ws.b;
/* compiled from: IPDetector.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.IPDetector$detectionIP$1", f = "IPDetector.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nIPDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IPDetector.kt\ncom/startshorts/androidplayer/utils/IPDetector$detectionIP$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,65:1\n1611#2,9:66\n1863#2:75\n1864#2:77\n1620#2:78\n1#3:76\n37#4:79\n36#4,3:80\n*S KotlinDebug\n*F\n+ 1 IPDetector.kt\ncom/startshorts/androidplayer/utils/IPDetector$detectionIP$1\n*L\n50#1:66,9\n50#1:75\n50#1:77\n50#1:78\n50#1:76\n51#1:79\n51#1:80,3\n*E\n"})
/* loaded from: classes7.dex */
final class IPDetector$detectionIP$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48163h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IPDetector$detectionIP$1(c<? super IPDetector$detectionIP$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new IPDetector$detectionIP$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((IPDetector$detectionIP$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48163h == 0) {
            f.b(obj);
            try {
                DatagramSocket datagramSocket = new DatagramSocket();
                datagramSocket.setSoTimeout(5000);
                byte[] bArr = new byte[20];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putShort((short) 1);
                wrap.putShort((short) 0);
                wrap.putInt(554869826);
                byte[] bArr2 = new byte[12];
                new Random().nextBytes(bArr2);
                wrap.put(bArr2);
                datagramSocket.send(new DatagramPacket(bArr, 20, InetAddress.getByName("stun.shorttv.live"), 5349));
                byte[] bArr3 = new byte[1024];
                datagramSocket.receive(new DatagramPacket(bArr3, 1024));
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = e0.f51729a.a(bArr3).iterator();
                while (it.hasNext()) {
                    String str = (String) ((Pair) it.next()).b();
                    if (str != null) {
                        arrayList.add(str);
                    }
                }
                String U0 = n.U0((String[]) arrayList.toArray(new String[0]), ",", null, null, 0, null, null, 62, null);
                Logger logger = Logger.f41511a;
                logger.h("IPDetector", "ips : " + U0);
                if (!TextUtils.isEmpty(U0)) {
                    new AccountLocalDS().R(U0);
                }
                Unit unit = Unit.f60915a;
                b.a(datagramSocket, null);
            } catch (Exception e10) {
                Logger logger2 = Logger.f41511a;
                logger2.h("IPDetector", "STUN request failed: " + e10.getMessage());
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
