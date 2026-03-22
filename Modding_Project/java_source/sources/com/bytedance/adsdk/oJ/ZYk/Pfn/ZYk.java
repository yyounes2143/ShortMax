package com.bytedance.adsdk.oJ.ZYk.Pfn;

import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.BTZ;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.Pfn;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.PiB;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.RZ;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.Ry;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.WcQ;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.ba;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.dLZ;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.jFA;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.si;
import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.so;
import com.bytedance.adsdk.oJ.ZYk.ex.ex;
import com.bytedance.adsdk.oJ.ZYk.ex.tB;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes3.dex */
public class ZYk {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.adsdk.oJ.ZYk.Pfn.ZYk$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[tB.values().length];
            oJ = iArr;
            try {
                iArr[tB.MINUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[tB.PLUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[tB.DIVISION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                oJ[tB.MULTI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                oJ[tB.MOD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                oJ[tB.EQ.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                oJ[tB.NOT_EQ.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                oJ[tB.GT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                oJ[tB.LT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                oJ[tB.GT_EQ.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                oJ[tB.LT_EQ.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                oJ[tB.DOUBLE_AMP.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                oJ[tB.DOUBLE_BAR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    private static Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> ZYk(List<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> list, String str, int i10) {
        LinkedList<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> linkedList = new LinkedList(list);
        int i11 = 5;
        while (i11 > 0) {
            LinkedList linkedList2 = new LinkedList();
            for (com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar : linkedList) {
                if (!linkedList2.isEmpty() && tB.oJ(((com.bytedance.adsdk.oJ.ZYk.ZYk.oJ) linkedList2.peekLast()).oJ()) && ((tB) ((com.bytedance.adsdk.oJ.ZYk.ZYk.oJ) linkedList2.peekLast()).oJ()).ZYk() == i11) {
                    com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar2 = (com.bytedance.adsdk.oJ.ZYk.ZYk.oJ) linkedList2.pollLast();
                    com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar3 = (com.bytedance.adsdk.oJ.ZYk.ZYk.oJ) linkedList2.pollLast();
                    if (!tB.oJ(oJVar3.oJ()) && !tB.oJ(oJVar.oJ())) {
                        linkedList2.addLast(oJ(oJVar3, oJVar2, oJVar));
                    } else {
                        throw new IllegalArgumentException(str.substring(0, i10));
                    }
                } else {
                    linkedList2.addLast(oJVar);
                }
            }
            i11--;
            linkedList = linkedList2;
        }
        return linkedList;
    }

    public static com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJ(List<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> list, String str, int i10) {
        tB(list, str, i10);
        Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> oJ = oJ(ZYk(list, str, i10));
        if (oJ.size() == 1) {
            return oJ.getFirst();
        }
        throw new IllegalStateException();
    }

    private static void tB(List<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> list, String str, int i10) {
        for (com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar : list) {
            if (ex.oJ(oJVar.oJ())) {
                throw new IllegalArgumentException(str.substring(0, i10));
            }
        }
    }

    private static Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> oJ(Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque) {
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar : deque) {
            if (!linkedList.isEmpty() && ((com.bytedance.adsdk.oJ.ZYk.ZYk.oJ) linkedList.peekLast()).oJ() == tB.COLON) {
                linkedList.pollLast();
                com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar2 = (com.bytedance.adsdk.oJ.ZYk.ZYk.oJ) linkedList.pollLast();
                if (((com.bytedance.adsdk.oJ.ZYk.ZYk.oJ) linkedList.pollLast()).oJ() == tB.QUESTION) {
                    RZ rz = new RZ();
                    rz.oJ((com.bytedance.adsdk.oJ.ZYk.ZYk.oJ) linkedList.pollLast());
                    rz.ZYk(oJVar2);
                    rz.tB(oJVar);
                    linkedList.addLast(rz);
                } else {
                    throw new IllegalStateException();
                }
            } else {
                linkedList.addLast(oJVar);
            }
        }
        return linkedList;
    }

    private static com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJ(com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar, com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar2, com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar3) {
        si dlz;
        switch (AnonymousClass1.oJ[((tB) oJVar2.oJ()).ordinal()]) {
            case 1:
                dlz = new dLZ();
                break;
            case 2:
                dlz = new Ry();
                break;
            case 3:
                dlz = new com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.oJ();
                break;
            case 4:
                dlz = new PiB();
                break;
            case 5:
                dlz = new BTZ();
                break;
            case 6:
                dlz = new com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.ex();
                break;
            case 7:
                dlz = new WcQ();
                break;
            case 8:
                dlz = new ba();
                break;
            case 9:
                dlz = new jFA();
                break;
            case 10:
                dlz = new Pfn();
                break;
            case 11:
                dlz = new so();
                break;
            case 12:
                dlz = new com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.ZYk();
                break;
            case 13:
                dlz = new com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.tB();
                break;
            default:
                throw new UnsupportedOperationException(oJVar2.oJ().toString());
        }
        dlz.oJ(oJVar);
        dlz.ZYk(oJVar3);
        return dlz;
    }

    public static boolean oJ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Boolean) || ((Boolean) obj).booleanValue()) {
            return !(obj instanceof Number) || ((Number) obj).floatValue() >= 0.0f;
        }
        return false;
    }
}
